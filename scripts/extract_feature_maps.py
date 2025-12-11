import torch
import numpy as np
import sys
sys.path.insert(0, 'src/reference')
from cnn_model import TrafficSignCNN

# Load model
model = TrafficSignCNN(num_classes=43)
model.load_state_dict(torch.load('models/traffic_sign_cnn.pth'))
model.eval()

# Load one test image
test_images = np.load('data/processed/test_images.npy')
test_tensor = torch.from_numpy(test_images[:1]).float()  # First image

print("=" * 70)
print("INTERMEDIATE FEATURE MAP EXTRACTION")
print("=" * 70)

# Hook to capture intermediate outputs
feature_maps = {}

def get_activation(name):
    def hook(model, input, output):
        feature_maps[name] = output.detach()
    return hook

# Register hooks
model.conv1.register_forward_hook(get_activation('conv1'))
model.pool1.register_forward_hook(get_activation('pool1'))
model.conv2.register_forward_hook(get_activation('conv2'))
model.pool2.register_forward_hook(get_activation('pool2'))
model.fc1.register_forward_hook(get_activation('fc1'))

# Forward pass
with torch.no_grad():
    output = model(test_tensor)
    prediction = torch.argmax(output, dim=1)

print(f"\n📊 Input Image:")
print(f"  Shape: {test_tensor.shape}")
print(f"  Range: [{test_tensor.min():.3f}, {test_tensor.max():.3f}]")

print(f"\n🔍 Layer-by-Layer Feature Maps:")
print(f"\n  1️⃣  Conv1 Output:")
print(f"      Shape: {feature_maps['conv1'].shape}")
print(f"      Range: [{feature_maps['conv1'].min():.3f}, {feature_maps['conv1'].max():.3f}]")
print(f"      Mean: {feature_maps['conv1'].mean():.3f}")
print(f"      Std: {feature_maps['conv1'].std():.3f}")

print(f"\n  2️⃣  Pool1 Output (after MaxPool):")
print(f"      Shape: {feature_maps['pool1'].shape}")
print(f"      Range: [{feature_maps['pool1'].min():.3f}, {feature_maps['pool1'].max():.3f}]")
print(f"      Mean: {feature_maps['pool1'].mean():.3f}")

print(f"\n  3️⃣  Conv2 Output:")
print(f"      Shape: {feature_maps['conv2'].shape}")
print(f"      Range: [{feature_maps['conv2'].min():.3f}, {feature_maps['conv2'].max():.3f}]")
print(f"      Mean: {feature_maps['conv2'].mean():.3f}")

print(f"\n  4️⃣  Pool2 Output (after MaxPool):")
print(f"      Shape: {feature_maps['pool2'].shape}")
print(f"      Range: [{feature_maps['pool2'].min():.3f}, {feature_maps['pool2'].max():.3f}]")
print(f"      Mean: {feature_maps['pool2'].mean():.3f}")

print(f"\n  5️⃣  FC1 Output (before final layer):")
print(f"      Shape: {feature_maps['fc1'].shape}")
print(f"      Range: [{feature_maps['fc1'].min():.3f}, {feature_maps['fc1'].max():.3f}]")
print(f"      Mean: {feature_maps['fc1'].mean():.3f}")

print(f"\n  6️⃣  Final Output:")
print(f"      Shape: {output.shape}")
print(f"      Predicted Class: {prediction.item()}")
print(f"      Top 5 Classes: {torch.topk(output, 5).indices[0].tolist()}")
print(f"      Top 5 Scores: {torch.topk(output, 5).values[0].tolist()}")

# Save feature maps for FPGA verification
np.savez('data/processed/feature_maps.npz',
         input=test_tensor.numpy(),
         conv1=feature_maps['conv1'].numpy(),
         pool1=feature_maps['pool1'].numpy(),
         conv2=feature_maps['conv2'].numpy(),
         pool2=feature_maps['pool2'].numpy(),
         fc1=feature_maps['fc1'].numpy(),
         output=output.numpy())

print(f"\n✅ Feature maps saved to: data/processed/feature_maps.npz")
print(f"   Use these for FPGA kernel verification!")

print("\n" + "=" * 70)
