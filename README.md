# AWS Terraform VPC Endpoints

Basic module to create remote state in AWS using S3 and DynamoDB.

- [Overview](#overview)
- [Terraform Docs](#terraform-docs)

## Overview

This module creates VPC interface and gateway endpoints. Interface endpoints can be used with built in private dns or self managed if you want to use centralized endpoints in an AWS Organization.

## Terraform-Docs

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

No modules.

#### Resources

| Name | Type |
|------|------|
| [aws_route53_record.dev_ns](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route53_record) | resource |
| [aws_route53_zone.interface_phz](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route53_zone) | resource |
| [aws_security_group.allow_vpc_endpoint](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group) | resource |
| [aws_security_group_rule.allow_vpc_endpoint](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group_rule) | resource |
| [aws_vpc_endpoint.gateway](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/vpc_endpoint) | resource |
| [aws_vpc_endpoint.interface](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/vpc_endpoint) | resource |
| [aws_caller_identity.current](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/caller_identity) | data source |
| [aws_region.current](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/region) | data source |

#### Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| allowed_cidr_blocks | List of CIDR blocks allowed to access VPC endpoints | `list(string)` | <pre>[<br>  "10.0.0.0/8",<br>  "172.16.0.0/12",<br>  "192.168.0.0/16"<br>]</pre> | no |
| gateway_endpoints | List of gateway endpoints to create | `list(string)` | `[]` | no |
| interface_endpoints | List of interface endpoints to create | `list(string)` | `[]` | no |
| private_dns_enabled | Enable private DNS for VPC endpoints | `bool` | `true` | no |
| route_table_ids | List of route table IDs to use for VPC endpoints | `list(string)` | n/a | yes |
| sg_name | Name of the security group usewd for VPC endpoint access | `string` | `"VPC-Endpoint-SG"` | no |
| subnet_ids | List of subnet IDs to use for VPC endpoints | `list(string)` | n/a | yes |
| vpc_id | The VPC ID | `string` | n/a | yes |

#### Outputs

| Name | Description |
|------|-------------|
| bucket_arn | ARN of bucket created for terraform state |
| bucket_name | Name of bucket created for terraform state |
| table_arn | ARN of dynamodb table created for terraform state |
| table_name | Name of dynamodb table created for terraform state |
<!-- END_TF_DOCS -->