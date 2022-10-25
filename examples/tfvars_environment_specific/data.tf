# examples/tfvars_environment_specific/data.tf

data "aws_caller_identity" "current" {}

data "aws_region" "current" {}