import torch
import numpy as np
from torchvision import transforms
from PIL import Image
import os
from cnn_model import TrafficSignCNN

def export_test_data():
    model = TrafficSignCNN(num_classes=43)
    model.load_state_dict(torch.load('models/traffic_sign_cnn.pth'))
    model.eval()
    
    transform = transforms.Compose([
        transforms.Resize((32, 32)),
        transforms.ToTensor(),
        transforms.Normalize(mean=[0.485, 0.456, 0.406], 
                           std=[0.229, 0.224, 0.225])
    ])
    
    train_dir = 'data/raw/GTSRB/Final_Training/Images'
    test_images = []
    test_labels = []
    
    class_folders = sorted(os.listdir(train_dir))[:43]
    
    for class_folder in class_folders:
        class_path = os.path.join(train_dir, class_folder)
        if not os.path.isdir(class_path):
            continue
        
        count = 0
        for img_file in sorted(os.listdir(class_path)):
            if img_file.endswith('.ppm') and count < 3:
                img_path = os.path.join(class_path, img_file)
                img = Image.open(img_path).convert('RGB')
                img_tensor = transform(img).unsqueeze(0)
                test_images.append(img_tensor)
                test_labels.append(int(class_folder))
                count += 1
            if count >= 3:
                break
    
    test_batch = torch.cat(test_images, dim=0)
    
    with torch.no_grad():
        outputs = model(test_batch)
        predictions = torch.argmax(outputs, dim=1)
    
    os.makedirs('data/processed', exist_ok=True)
    
    np.save('data/processed/test_images.npy', test_batch.numpy())
    np.save('data/processed/test_labels.npy', np.array(test_labels))
    np.save('data/processed/golden_predictions.npy', predictions.numpy())
    np.save('data/processed/golden_outputs.npy', outputs.numpy())
    
    print(f"Exported {len(test_images)} test images")
    print(f"Images per class: 3, Total classes: 43")
    correct = (predictions.numpy() == np.array(test_labels)).sum()
    print(f"Accuracy: {correct}/{len(test_labels)} = {100*correct/len(test_labels):.2f}%")
    
    weights = {}
    for name, param in model.named_parameters():
        weights[name] = param.detach().numpy()
    
    np.savez('models/model_weights.npz', **weights)
    print("Weights and test data saved!")

if __name__ == "__main__":
    export_test_data()
