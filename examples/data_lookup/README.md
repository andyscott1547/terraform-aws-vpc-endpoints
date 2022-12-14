# Data-Lookup Example

## Usage 

```terraform
module "vpc_endpoints" {
  source              = "andyscott1547/vpc-endpoints/aws"
  version             = "1.0.4"
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

| Name | Version |
|------|---------|
| aws | 4.36.1 |

#### Modules

| Name | Source | Version |
|------|--------|---------|
| vpc_endpoints | andyscott1547/vpc-endpoints/aws | 1.0.4 |

#### Resources

| Name | Type |
|------|------|
| [aws_caller_identity.current](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/caller_identity) | data source |
| [aws_region.current](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/region) | data source |
| [aws_route_tables.current](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/route_tables) | data source |
| [aws_subnets.current](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/subnets) | data source |
| [aws_vpc.current](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/vpc) | data source |

#### Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| gateway_endpoints | List of gateway endpoints to create | `list(string)` | n/a | yes |
| interface_endpoints | List of interface endpoints to create | `list(string)` | n/a | yes |
| managed_private_dns_enabled | Enable AWS managed private DNS for VPC endpoints, if set to fasle private DNS zones and records will be created for use in a centralized solution | `bool` | `true` | no |
| region | value for the region | `string` | `"eu-west-1"` | no |
| tags | value for the tags | `map(string)` | `{}` | no |

#### Outputs

No outputs.
<!-- END_TF_DOCS -->