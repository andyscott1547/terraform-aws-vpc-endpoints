# examples/data_lookup/main.tf

module "tf_state" {
  source  = "andyscott1547/vpc-endpoints/aws"
  version = "0.1.0"
  vpc_id  = data.aws_vpc.current.id
  interface_endpoints = var.interface_endpoints
  gateway_endpoints = var.gateway_endpoints
  subnet_ids = data.aws_subnets.current.ids
  route_table_ids = data.aws_route_tables.current.ids
}
