# examples/workspace_specific/main.tf

module "vpc_endpoints" {
  source                      = "andyscott1547/vpc-endpoints/aws"
  version                     = "0.1.5"
  managed_private_dns_enabled = var.managed_private_dns_enabled
  vpc_id                      = local.environment.vpc_id
  interface_endpoints         = local.environment.interface_endpoints
  gateway_endpoints           = local.environment.gateway_endpoints
  subnet_ids                  = local.environment.subnet_ids
  route_table_ids             = local.environment.route_table_ids
}

