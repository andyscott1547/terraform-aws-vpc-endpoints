# /examples/data_lookup_env_specific/config.auto.tfvars

# Global Variables

region                      = "eu-west-1"
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