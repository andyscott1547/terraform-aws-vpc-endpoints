# locals.terraform

locals {
  interface_endpoints = { for e in var.interface_endpoints : "com.amazonaws.${data.aws_region.current.name}.${e}" => "${e}.${data.aws_region.current.name}.amazonaws.com" }
  gateway_endpoints   = { for e in var.gateway_endpoints : "com.amazonaws.${data.aws_region.current.name}.${e}" => "${e}.${data.aws_region.current.name}.amazonaws.com" }
}