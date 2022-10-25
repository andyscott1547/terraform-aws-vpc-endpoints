# /examples/workspace_specific/config.auto.tfvars

# Global Variables

region = "eu-west-1"
managed_private_dns_enabled = false
tags = {
  "Project"    = "terraform"
  "Owner"      = "terraform"
  "Billing_ID" = "terraform"
  "Managed_By" = "terraform"
}

# Environment Specific Variables

env_config = {
  develop = {
    vpc_id  = "vpc-1234567890"
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
    interface_endpoints = [
      "ec2",
      "sqs",
      "sns",
      "ssm",
      "logs",
      "ssmmessages",
      "ec2messages",
      "autoscaling",
      "ecs"
    ]
    gateway_endpoints = [
      "dynamodb"
    ]
  }

  staging = {
    vpc_id  = "vpc-1234567890"
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
    interface_endpoints = [
      "ec2",
      "sns",
      "ssm",
      "logs",
      "ssmmessages",
      "ec2messages",
      "autoscaling",
    ]

    gateway_endpoints = [
      "s3",
      "dynamodb"
    ]
  }

  preprod = {
    vpc_id  = "vpc-1234567890"
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
    interface_endpoints = [
      "ec2",
      "sqs",
      "sns",
      "ssm",
      "logs",
      "ssmmessages",
      "ec2messages",
      "autoscaling",
      "ecs"
    ]

    gateway_endpoints = [
      "s3",
      "dynamodb"
    ]
  }

  prod = {
    vpc_id  = "vpc-1234567890"
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

    gateway_endpoints = [
      "s3",
      "dynamodb"
    ]
  }
}