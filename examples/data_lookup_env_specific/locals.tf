# examples/data_lookup_env_specific/locals.tf

locals {
  environment = var.env_config[var.environment]
}