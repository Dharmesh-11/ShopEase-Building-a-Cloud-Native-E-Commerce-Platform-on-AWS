# 🌐 Task 1: VPC Setup (ShopEase Project)

## 📌 Objective
Design and implement a secure, scalable AWS VPC architecture for a 3-tier application:
- Public Layer (Web)
- Private Layer (Application)
- Database Layer (DB)

---


## 🧱 VPC Configuration

| Component | Value |
|----------|------|
| VPC CIDR | 10.0.0.0/16 |
| Region | ap-southeast-2 |
| DNS Resolution | Enabled |

📸 Screenshot:
![VPC](screenshots/step-1.png)

---

## 🌐 Subnet Configuration

| Type | Name | CIDR |
|------|------|------|
| Public | public-subnet-1 | 10.0.1.0/24 |
| Public | public-subnet-2 | 10.0.2.0/24 |
| Private | private-subnet-1 | 10.0.3.0/24 |
| Private | private-subnet-2 | 10.0.4.0/24 |
| Database | db-subnet-1 | 10.0.5.0/24 |
| Database | db-subnet-2 | 10.0.6.0/24 |

📸 Screenshot:
![Subnets](screenshots/step-2.png)

---

## 🌍 Internet Gateway (IGW)

- Created Internet Gateway
- Attached to VPC

📸 Screenshot:
![IGW](screenshots/step-3.png)

---

## 🔄 NAT Gateway

- Created NAT Gateway in public subnet
- Attached Elastic IP
- Used for private subnet internet access

📸 Screenshot:
![NAT](screenshots/step-4.png)

---

## 🛣️ Route Tables

### Public Route Table
- Route: `0.0.0.0/0 → Internet Gateway`

### Private Route Table
- Route: `0.0.0.0/0 → NAT Gateway`

### DB Route Table
- No internet access (secure)

📸 Screenshot:
![Route Tables](screenshots/step-5.png)

---

## 🔗 Subnet Associations

- Public subnets → Public route table
- Private subnets → Private route table
- DB subnets → DB route table

📸 Screenshot:
![Subnet Association](screenshots/step-6.png)

---

## 🔐 Network ACL Configuration

### Public NACL
- Allow HTTP (80)
- Allow HTTPS (443)
- Allow SSH (22)
- Allow Ephemeral Ports

📸 Screenshot:
![Public NACL](screenshots/step-7.png)

---

### Private NACL
- Allow traffic from public subnet
- Allow ephemeral ports

📸 Screenshot:
![Private NACL](screenshots/step-8.png)

---

### Database NACL
- Allow MySQL (3306) from private subnet only

📸 Screenshot:
![DB NACL](screenshots/step-9.png)

---

## 🔄 Outbound Rules

- Public → Allow All
- Private → Allow via NAT
- DB → Restricted

📸 Screenshot:
![Outbound Rules](screenshots/step-10.png)

---

## ✅ Final Verification

✔ VPC created successfully  
✔ Subnets properly segmented  
✔ Internet Gateway attached  
✔ NAT Gateway working  
✔ Route tables configured  
✔ NACL security applied  

📸 Screenshot:
![Final](screenshots/step-11.png)

---

## 🔐 Security Best Practices

- No direct internet access for DB
- Use NAT Gateway for private instances
- Apply least privilege networking
- Use Security Groups + NACLs

---

## 🎯 Outcome

Successfully created a **secure 3-tier VPC architecture**:

- 🌍 Public Layer → Web servers
- 🔒 Private Layer → Application servers
- 🛢️ DB Layer → Database servers

---

## 🎤 Interview Explanation

> I designed a 3-tier AWS VPC architecture using public, private, and database subnets. I configured an Internet Gateway for public access, a NAT Gateway for private subnet internet connectivity, and secured the environment using route tables and network ACLs.

---

## 🚀 Conclusion

This VPC setup provides:
- High availability
- Secure architecture
- Production-ready networking design
