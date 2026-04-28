# 📁 AWS EFS Setup – ShopEase Project (Task 6)

## 📌 Overview
This task covers Amazon EFS (Elastic File System) setup:

- Create EFS file system
- Mount EFS to EC2 instance
- Configure backup plan
- Verify shared storage

---

## 🎯 Objectives

- Create EFS
- Mount on EC2
- Enable lifecycle management
- Configure AWS Backup
- Verify file system usage

---

# 📁 1. EFS File System Created

### ✔ Details:
- Name: shop-ease
- Performance mode: General Purpose
- Throughput: Elastic
- Status: Available

📸 Screenshot:
![EFS Created](create-efs.png)

---

# ⚙️ 2. Install Required Packages (EC2)

### ✔ Commands:

```bash
sudo apt update
sudo apt install nfs-common -y
mkdir -p /mnt/efs
```

📸 Screenshot:
![Install Packages](creating files and pacakage.png)

---

# 🔗 3. Mount EFS to EC2

### ✔ Mount Command:

```bash
sudo mount -t nfs4 -o nfsvers=4.1 <efs-dns>:/ /mnt/efs
```

📸 Screenshot:
![Mount Options](mounting options.png)

---

# 📊 4. Verify Mount

### ✔ Command:

```bash
df -h
```

📸 Screenshot:
![Mounted](mounting.png)

---

# 💾 5. AWS Backup Plan

### ✔ Details:
- Backup plan created
- Resources assigned
- Automatic backups enabled

📸 Screenshot:
![Backup Plan](backup-plan.png)

---

# 🔄 6. Backup Configuration

📸 Screenshot:
![Backup](efs-backup.png)

---

# 🎯 Outcome

- EFS successfully created  
- Mounted on EC2 instance  
- Shared storage working  
- Backup plan configured  
