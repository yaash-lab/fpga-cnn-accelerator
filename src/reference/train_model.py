import torch
import torch.nn as nn
import torch.optim as optim
from torch.utils.data import Dataset, DataLoader
from torchvision import transforms
from PIL import Image
import os
import pandas as pd
import numpy as np
from cnn_model import TrafficSignCNN

class GTSRBDataset(Dataset):
    def __init__(self, root_dir, transform=None, max_samples=1000):
        self.root_dir = root_dir
        self.transform = transform
        self.images = []
        self.labels = []
        
        # Load data from all class folders
        train_dir = os.path.join(root_dir, 'GTSRB/Final_Training/Images')
        count = 0
        
        for class_folder in sorted(os.listdir(train_dir)):
            class_path = os.path.join(train_dir, class_folder)
            if not os.path.isdir(class_path):
                continue
            
            csv_file = os.path.join(class_path, f'GT-{class_folder}.csv')
            if os.path.exists(csv_file):
                df = pd.read_csv(csv_file, sep=';')
                for idx, row in df.iterrows():
                    if count >= max_samples:
                        break
                    img_path = os.path.join(class_path, row['Filename'])
                    if os.path.exists(img_path):
                        self.images.append(img_path)
                        self.labels.append(int(row['ClassId']))
                        count += 1
            
            if count >= max_samples:
                break
        
        print(f"Loaded {len(self.images)} images")
    
    def __len__(self):
        return len(self.images)
    
    def __getitem__(self, idx):
        img_path = self.images[idx]
        image = Image.open(img_path).convert('RGB')
        label = self.labels[idx]
        
        if self.transform:
            image = self.transform(image)
        
        return image, label

def train_model():
    # Set device
    device = torch.device('cuda' if torch.cuda.is_available() else 'cpu')
    print(f"Using device: {device}")
    
    # Data transforms
    transform = transforms.Compose([
        transforms.Resize((32, 32)),
        transforms.ToTensor(),
        transforms.Normalize(mean=[0.485, 0.456, 0.406], 
                           std=[0.229, 0.224, 0.225])
    ])
    
    # Load dataset (limited to 1000 samples for speed)
    dataset = GTSRBDataset(
        root_dir='data/raw',
        transform=transform,
        max_samples=50000
    )
    
    # Split into train/val
    train_size = int(0.8 * len(dataset))
    val_size = len(dataset) - train_size
    train_dataset, val_dataset = torch.utils.data.random_split(
        dataset, [train_size, val_size]
    )
    
    train_loader = DataLoader(train_dataset, batch_size=64, shuffle=True)
    val_loader = DataLoader(val_dataset, batch_size=64, shuffle=False)
    
    # Create model
    model = TrafficSignCNN(num_classes=43).to(device)
    criterion = nn.CrossEntropyLoss()
    optimizer = optim.Adam(model.parameters(), lr=0.001)
    
    # Train for just 15 epochs (quick training)
    num_epochs = 15
    print(f"\nTraining for {num_epochs} epochs...")
    
    for epoch in range(num_epochs):
        model.train()
        train_loss = 0.0
        correct = 0
        total = 0
        
        for images, labels in train_loader:
            images, labels = images.to(device), labels.to(device)
            
            optimizer.zero_grad()
            outputs = model(images)
            loss = criterion(outputs, labels)
            loss.backward()
            optimizer.step()
            
            train_loss += loss.item()
            _, predicted = outputs.max(1)
            total += labels.size(0)
            correct += predicted.eq(labels).sum().item()
        
        train_acc = 100. * correct / total
        print(f"Epoch {epoch+1}/{num_epochs} - Loss: {train_loss/len(train_loader):.4f} - Acc: {train_acc:.2f}%")
    
    # Save model
    torch.save(model.state_dict(), 'models/traffic_sign_cnn.pth')
    print("\nModel saved to models/traffic_sign_cnn.pth")
    
    # Test on a few samples
    model.eval()
    with torch.no_grad():
        val_correct = 0
        val_total = 0
        for images, labels in val_loader:
            images, labels = images.to(device), labels.to(device)
            outputs = model(images)
            _, predicted = outputs.max(1)
            val_total += labels.size(0)
            val_correct += predicted.eq(labels).sum().item()
    
    val_acc = 100. * val_correct / val_total
    print(f"Validation Accuracy: {val_acc:.2f}%")

if __name__ == "__main__":
    train_model()
