import torch
import torch.nn as nn
import torch.nn.functional as F

class TrafficSignCNN(nn.Module):
    """Simple CNN for traffic sign classification - GTSRB"""
    def __init__(self, num_classes=43):
        super(TrafficSignCNN, self).__init__()
        # Conv Layer 1: 3x32x32 -> 32x30x30 -> 32x15x15 (after pool)
        self.conv1 = nn.Conv2d(3, 32, kernel_size=3, padding=0)
        self.bn1 = nn.BatchNorm2d(32)
        self.pool1 = nn.MaxPool2d(2, 2)
        
        # Conv Layer 2: 32x15x15 -> 64x13x13 -> 64x6x6 (after pool)
        self.conv2 = nn.Conv2d(32, 64, kernel_size=3, padding=0)
        self.bn2 = nn.BatchNorm2d(64)
        self.pool2 = nn.MaxPool2d(2, 2)
        
        # Fully connected layers
        self.fc1 = nn.Linear(64 * 6 * 6, 128)
        self.dropout = nn.Dropout(0.5)
        self.fc2 = nn.Linear(128, num_classes)
    
    def forward(self, x):
        # Layer 1
        x = self.conv1(x)
        x = self.bn1(x)
        x = F.relu(x)
        x = self.pool1(x)
        
        # Layer 2
        x = self.conv2(x)
        x = self.bn2(x)
        x = F.relu(x)
        x = self.pool2(x)
        
        # Flatten
        x = x.view(-1, 64 * 6 * 6)
        
        # FC layers
        x = self.fc1(x)
        x = F.relu(x)
        x = self.dropout(x)
        x = self.fc2(x)
        
        return x

if __name__ == "__main__":
    # Test model
    model = TrafficSignCNN(num_classes=43)
    test_input = torch.randn(1, 3, 32, 32)
    output = model(test_input)
    print(f"Model output shape: {output.shape}")
    print(f"Number of parameters: {sum(p.numel() for p in model.parameters())}")
