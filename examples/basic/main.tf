# examples/basic/main.tf

module "vpc_endpoints" {
  source  = "andyscott1547/vpc-endpoints/aws"
  version = "0.1.0"
  vpc_id  = "vpc-1234567890"
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
}

