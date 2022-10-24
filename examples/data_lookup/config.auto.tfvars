# /examples/data_lookup/config.auto.tfvars

region = "eu-west-1"

tags = {
  "Project"    = "terraform"
  "Owner"      = "terraform"
  "Billing_ID" = "terraform"
  "Managed_By" = "terraform"
}

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