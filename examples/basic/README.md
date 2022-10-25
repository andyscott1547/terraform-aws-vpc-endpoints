# Basic Example

## Usage 

```terraform
module "vpc_endpoints" {
  source  = "andyscott1547/vpc-endpoints/aws"
  version = "0.1.4"
  vpc_id  = "vpc-1234567890"
  interface_endpoints = [
    "ec2",
    "rds",
    "sqs",
    "sns",
    "ssm",
    "logs",
    "ssmmessages",
    "ec2messages",
    "autoscaling",
    "ecs",
    "athena"
  ]
  gateway_endpoints = [
    "s3",
    "dynamodb"
  ]
  subnet_ids = [
    "subnet-1234567890",
    "subnet-0987654321",
    "subnet-1234567890"
  ]
  route_table_ids = [
    "rtb-1234567890",
    "rtb-0987654321",
    "rtb-1234567890"
  ]
}
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
| vpc_endpoints | andyscott1547/vpc-endpoints/aws | 0.1.0 |

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