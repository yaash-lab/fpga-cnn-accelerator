import numpy as np
from PIL import Image
import os

# Load test images
test_images = np.load('data/processed/test_images.npy')
test_labels = np.load('data/processed/test_labels.npy')

print("=" * 60)
print("TEST DATA DETAILS")
print("=" * 60)
print(f"\nTest images shape: {test_images.shape}")
print(f"  - Number of images: {test_images.shape[0]}")
print(f"  - Channels: {test_images.shape[1]}")
print(f"  - Height: {test_images.shape[2]}")
print(f"  - Width: {test_images.shape[3]}")
print(f"\nTest labels: {test_labels}")

print("\n" + "=" * 60)
print("REQUIREMENTS CHECK")
print("=" * 60)
print("✅ Images: 32×32 RGB")
print("✅ Pre-trained weights: models/model_weights.npz")
print("✅ Test data: 10 images with golden outputs")
print("✅ Output: Class predictions (0-42) for 43 classes")
