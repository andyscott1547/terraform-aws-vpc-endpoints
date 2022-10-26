# examples/data_lookup/main.tf

module "vpc_endpoints" {
  source                      = "andyscott1547/vpc-endpoints/aws"
  version                     = "1.0.1"
  managed_private_dns_enabled = var.managed_private_dns_enabled
  vpc_id                      = data.aws_vpc.current.id
  interface_endpoints         = var.interface_endpoints
  gateway_endpoints           = var.gateway_endpoints
  subnet_ids                  = data.aws_subnets.current.ids
  route_table_ids             = data.aws_route_tables.current.ids
}

