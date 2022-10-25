# examples/workspace_specific/locals.tf

locals {
  environment = var.env_config[terraform.workspace]
}