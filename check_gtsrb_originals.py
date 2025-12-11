from PIL import Image
import os

print("=" * 60)
print("ORIGINAL GTSRB IMAGE SIZES (Before Preprocessing)")
print("=" * 60)

train_dir = 'data/raw/GTSRB/Final_Training/Images'

# Check multiple classes
for class_folder in sorted(os.listdir(train_dir))[:10]:
    class_path = os.path.join(train_dir, class_folder)
    if not os.path.isdir(class_path):
        continue
    
    # Check first 3 images from each class
    count = 0
    for img_file in sorted(os.listdir(class_path)):
        if img_file.endswith('.ppm') and count < 3:
            img_path = os.path.join(class_path, img_file)
            img = Image.open(img_path)
            print(f"Class {class_folder.zfill(5)} - {img_file}: {img.size} (W x H)")
            count += 1

print("\n" + "=" * 60)
print("SUMMARY")
print("=" * 60)
print("GTSRB original images have VARIABLE sizes")
print("Common sizes: 15x15 to 250x250 pixels")
print("\n🔄 Preprocessing: Resize ALL images to 32×32 RGB")
print("📊 After preprocessing: (10, 3, 32, 32) - 10 images, 3 channels, 32x32")
