# examples/tfvars_environment_specific/main.tf

module "vpc_endpoints" {
  source                      = "andyscott1547/vpc-endpoints/aws"
  version                     = "1.0.3"
  managed_private_dns_enabled = var.managed_private_dns_enabled
  vpc_id                      = var.vpc_id
  interface_endpoints         = var.interface_endpoints
  gateway_endpoints           = var.gateway_endpoints
  subnet_ids                  = var.subnet_ids
  route_table_ids             = var.route_table_ids
}

