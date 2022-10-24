# Data-Lookup Example

## Usage 

```terraform
module "vpc_endpoints" {
  source              = "andyscott1547/vpc-endpoints/aws"
  version             = "0.1.0"
  vpc_id              = data.aws_vpc.current.id
  interface_endpoints = var.interface_endpoints
  gateway_endpoints   = var.gateway_endpoints
  subnet_ids          = data.aws_subnets.current.ids
  route_table_ids     = data.aws_route_tables.current.ids
}
```

## Terraform Docs

<!-- BEGIN_TF_DOCS -->
#### Requirements

| Name | Version |
|------|---------|
| terraform | ~> 1.0 |
| aws | ~> 4.0 |

#### Providers

No providers.

#### Modules

| Name | Source | Version |
|------|--------|---------|
| tf_state | andyscott1547/remote-state/aws | 1.1.0 |

#### Resources

No resources.

#### Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| region | value for the region | `string` | `"eu-west-1"` | no |
| tags | value for the tags | `map(string)` | `{}` | no |

#### Outputs

No outputs.
<!-- END_TF_DOCS -->