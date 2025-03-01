# AWS Resource Tracker

A Bash script to track AWS resource usage (S3, EC2, IAM, Lambda).

## Usage
1. Install AWS CLI and configure credentials.
2. Run the script manually:
   ```bash
   ./aws-resource-tracker.sh


## Automating with Crontab
To schedule the script to run daily at 6 PM, use the following command:
```bash
crontab -e

0 18 * * * /usr/local/bin/aws-resource-tracker.sh >> /var/log/aws_resource_usage.log 2>&1




