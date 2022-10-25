# examples/data_lookup_env_specific/data.tf

data "aws_caller_identity" "current" {}

data "aws_region" "current" {}

data "aws_vpc" "current" {
  filter {
    name   = "tag:Name"
    values = ["mgmt-cluster"]
  }
}

data "aws_subnets" "current" {
  filter {
    name   = "vpc-id"
    values = [data.aws_vpc.current.id]
  }

  tags = {
    "Type" = "Private"
  }
}

data "aws_route_tables" "current" {
  vpc_id = data.aws_vpc.current.id
}