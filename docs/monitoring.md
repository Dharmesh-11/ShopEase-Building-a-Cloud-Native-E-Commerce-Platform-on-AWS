# 📊 AWS Monitoring & Alerts – ShopEase Project (Task 8)

## 📌 Overview
This task covers:
- Custom metrics (CloudWatch)
- Alarms
- SNS notifications
- Dashboard
- VPC Flow Logs

---

## 🧮 1. Custom Metric (CloudWatch CLI)
```bash
aws cloudwatch put-metric-data --metric-name ActiveUsers --namespace ShopEase --value 100
```
![Custom Metric](bash-script.png)

---

## 🚨 2. CloudWatch Alarms
![Alarms](cloudwatch-alarm.png)

---

## 📢 3. SNS Topic Created
![SNS Topic](create-topic.png)

---

## 📩 4. Subscription Created
![Subscription](create-subscrition.png)

---

## ✅ 5. Subscription Confirmed
![Confirmed](confirmed-subscriton.png)

---

## 📊 6. CloudWatch Dashboard
![Dashboard](Dashboard.png)

---

## 📜 7. VPC Flow Logs
![Logs](vpc-log.png)

---

## ✅ Outcome
✔ Custom metric created  
✔ Alarm configured  
✔ SNS notifications working  
✔ Dashboard created  
✔ Logs monitoring enabled  
