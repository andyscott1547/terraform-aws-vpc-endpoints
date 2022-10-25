# /examples/tfvars_environment_specific/preprod.tfvars

# Global variables
region = "eu-west-1"
tags = {
  "Project"    = "terraform"
  "Owner"      = "terraform"
  "Billing_ID" = "terraform"
  "Managed_By" = "terraform"
}

# Network configuration variables
vpc_id = "vpc-1234567890"
subnet_ids = [
  "subnet-1234567890",
  "subnet-0987654321",
  "subnet-1234567890"
]
route_table_ids = [
  "rtb-1234567890",
  "rtb-0987654321",
  "rtb-1234567890"
]

# Endpoint configuration variables
interface_endpoints = [
  "ec2",
  "rds",
  "sqs",
  "sns",
  "ssm",
  "logs",
  "ssmmessages",
  "ec2messages",
  "autoscaling",
  "ecs",
  "athena"
]

managed_private_dns_enabled = false

gateway_endpoints = [
  "s3",
  "dynamodb"
]