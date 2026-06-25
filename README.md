# AWS Resource Tracker using Shell Scripting

## Project Overview

AWS Resource Tracker is a Bash Shell Scripting project that automates the monitoring of AWS resources using AWS CLI.

The script retrieves information about commonly used AWS services such as Amazon S3, Amazon EC2, AWS Lambda, and AWS IAM Users. It provides a simple way to track cloud resources from the command line and serves as an introductory DevOps automation project.

---

## Objectives

* Learn Bash Shell Scripting
* Use AWS CLI to interact with AWS services
* Automate repetitive AWS monitoring tasks
* Practice Linux command-line operations
* Understand cloud resource visibility and reporting
* Build a beginner-friendly DevOps project

---

## AWS Services Used

* Amazon S3
* Amazon EC2
* AWS Lambda
* AWS IAM

---

## Project Architecture

```text
Shell Script
      │
      ▼
   AWS CLI
      │
      ▼
AWS Account Resources
 ├── S3 Buckets
 ├── EC2 Instances
 ├── Lambda Functions
 └── IAM Users
```

---

## Script Used

```bash
#!/bin/bash

set -x

echo "Printing S3 Buckets"
aws s3 ls

echo "Printing EC2 Instances"
aws ec2 describe-instances

echo "Printing Lambda Functions"
aws lambda list-functions

echo "Printing IAM Users"
aws iam list-users

echo "Resource tracking completed successfully"
```

---

## Prerequisites

* Linux (Ubuntu)
* AWS CLI
* AWS Account
* IAM User with AWS CLI permissions
* Configured AWS Credentials

Verify AWS CLI:

```bash
aws --version
```

Verify Credentials:

```bash
aws sts get-caller-identity
```

---

## How to Run the Project

### Create Script

```bash
vim aws-resource-tracker.sh
```

### Grant Permission

```bash
chmod +x aws-resource-tracker.sh
```

### Execute Script

```bash
./aws-resource-tracker.sh
```

---

## Sample Output

```text
Printing S3 Buckets
bucket-1
bucket-2

Printing EC2 Instances
InstanceId: i-xxxxxxxxxxxxx

Printing Lambda Functions
FunctionName: demo-function

Printing IAM Users
UserName: admin
```

---

## Cron Job Automation

Open Cron:

```bash
crontab -e
```

Run Daily at 6 PM:

```bash
0 18 * * * /home/ubuntu/aws-resource-tracker.sh
```

View Cron Jobs:

```bash
crontab -l
```

Check Cron Service:

```bash
systemctl status cron
```

---

## Screenshots

### Script Creation

![Script Creation](screenshots/script-creation.png)

### Permission Command

![Permission Command](screenshots/permission-command.png)

### Script Execution

![Script Execution](screenshots/script-execution.png)

### Cron Status

![Cron Status](screenshots/cron-status.png)

---

## Skills Demonstrated

* Linux Fundamentals
* Bash Shell Scripting
* AWS CLI
* AWS Resource Monitoring
* Task Automation
* Infrastructure Visibility
* DevOps Fundamentals
* Git & GitHub

---

## Learning Outcomes

* Shell Scripting Automation
* AWS CLI Usage
* Linux Permissions
* Script Execution
* Cron Job Scheduling
* Project Documentation

---

## Future Improvements

* Store output in log files
* Export results to CSV
* Add error handling
* Email notifications
* Additional AWS Services Monitoring
* Automated Reporting

---

## Author

Deanne Gonsalves

Cloud & DevOps Enthusiast







