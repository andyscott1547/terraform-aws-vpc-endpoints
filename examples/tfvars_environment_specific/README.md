# TFVARS Environment Specific Example

## Usage 

```terraform
module "vpc_endpoints" {
  source                      = "andyscott1547/vpc-endpoints/aws"
  version                     = "1.0.4"
  managed_private_dns_enabled = var.managed_private_dns_enabled
  vpc_id                      = var.vpc_id
  interface_endpoints         = var.interface_endpoints
  gateway_endpoints           = var.gateway_endpoints
  subnet_ids                  = var.subnet_ids
  route_table_ids             = var.route_table_ids
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
| aws | ~> 4.0 |

#### Modules

| Name | Source | Version |
|------|--------|---------|
| vpc_endpoints | andyscott1547/vpc-endpoints/aws | 1.0.4 |

#### Resources

| Name | Type |
|------|------|
| [aws_caller_identity.current](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/caller_identity) | data source |
| [aws_region.current](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/region) | data source |

#### Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| gateway_endpoints | List of gateway endpoints to create | `list(string)` | n/a | yes |
| interface_endpoints | List of interface endpoints to create | `list(string)` | n/a | yes |
| managed_private_dns_enabled | Enable AWS managed private DNS for VPC endpoints, if set to fasle private DNS zones and records will be created for use in a centralized solution | `bool` | `true` | no |
| region | value for the region | `string` | `"eu-west-1"` | no |
| route_table_ids | List of route table IDs to associate with the endpoints | `list(string)` | n/a | yes |
| subnet_ids | List of subnet IDs to associate with the endpoints | `list(string)` | n/a | yes |
| tags | value for the tags | `map(string)` | `{}` | no |
| vpc_id | The ID of the VPC in which the endpoints will be created | `string` | n/a | yes |

#### Outputs

No outputs.
<!-- END_TF_DOCS -->