# 💽 AWS EBS Setup – ShopEase Project (Task 7)

## 📌 Overview
This task demonstrates:
- Create & attach EBS
- Format & mount
- Persistent storage
- Snapshot & lifecycle

---

## 📦 1. EBS Volume Created
![EBS Volume](ebs-vloume(10gb).png)

---

## 🔗 2. Attach Volume to EC2
![Attach](attach-to-ec2.png)

---

## 🔍 3. Verify Disk
```bash
lsblk
```
![lsblk](lsblk.png)

---

## 🧱 4. Format Volume
```bash
sudo mkfs.ext4 /dev/nvme1n1p1
```
![Format](format-ext4.png)

---

## 📁 5. Mount Volume
```bash
sudo mkdir /data
sudo mount /dev/nvme1n1p1 /data
df -h
```
![Mount](mounting.png)

---

## 🔄 6. Permanent Mount
```bash
sudo nano /etc/fstab
```
Add:
```bash
/dev/nvme1n1p1 /data ext4 defaults,nofail 0 2
```
![fstab](permant-mount.png)

---

## 📸 7. Snapshot
![Snapshot](ebs-volume-snapshot.png)

---

## 🔁 8. Lifecycle Policy
![Lifecycle](ebs-lifecyle-policies.png)

---

## ✅ Outcome
✔ Volume created  
✔ Mounted  
✔ Persistent  
✔ Snapshot & lifecycle enabled  
