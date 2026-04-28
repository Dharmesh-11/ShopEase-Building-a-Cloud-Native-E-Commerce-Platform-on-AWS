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
![Custom Metric](../screenshots/task-8-CloudWatch-SNS/bash-script.png)

---

## 🚨 2. CloudWatch Alarms
![Alarms](../screenshots/task-8-CloudWatch-SNS/cloudwatch-alarm.png)

---

## 📢 3. SNS Topic Created
![SNS Topic](../screenshots/task-8-CloudWatch-SNS/create-topic.png)

---

## 📩 4. Subscription Created
![Subscription](../screenshots/task-8-CloudWatch-SNS/create-subscrition.png)

---

## ✅ 5. Subscription Confirmed
![Confirmed](../screenshots/task-8-CloudWatch-SNS/confirmed-subscriton.png)

---

## 📊 6. CloudWatch Dashboard
![Dashboard](../screenshots/task-8-CloudWatch-SNS/Dashboard.png)

---

## 📜 7. VPC Flow Logs
![Logs](../screenshots/task-8-CloudWatch-SNS/vpc-log.png)

---

## ✅ Outcome
✔ Custom metric created  
✔ Alarm configured  
✔ SNS notifications working  
✔ Dashboard created  
✔ Logs monitoring enabled  
