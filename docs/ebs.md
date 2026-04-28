# 💽 AWS EBS Setup – ShopEase Project (Task 7)

## 📌 Overview
This task demonstrates:
- Create & attach EBS
- Format & mount
- Persistent storage
- Snapshot & lifecycle

---

## 📦 1. EBS Volume Created
![EBS Volume](../screenshots/task-7-ebs/ebs-vloume-10gb.png)

---

## 🔗 2. Attach Volume to EC2
![Attach](../screenshots/task-7-ebs/attach-to-ec2.png)

---

## 🔍 3. Verify Disk
```bash
lsblk
```

---

## 🧱 4. Format Volume
```bash
sudo mkfs.ext4 /dev/nvme1n1p1
```
![Format](../screenshots/task-7-ebs/format-ext4.png)

---

## 📁 5. Mount Volume
```bash
sudo mkdir /data
sudo mount /dev/nvme1n1p1 /data
df -h
```
![Mount](../screenshots/task-7-ebs/mounting.png)

---

## 🔄 6. Permanent Mount
```bash
sudo nano /etc/fstab
```
Add:
```bash
/dev/nvme1n1p1 /data ext4 defaults,nofail 0 2
```
![fstab](../screenshots/task-7-ebs/permant-mount.png)

---

## 📸 7. Snapshot
![Snapshot](../screenshots/task-7-ebs/ebs-volume-snapshot.png)

---

## 🔁 8. Lifecycle Policy
![Lifecycle](../screenshots/task-7-ebs/ebs-lifecyle-policies.png)

---

## ✅ Outcome
✔ Volume created  
✔ Mounted  
✔ Persistent  
✔ Snapshot & lifecycle enabled  
