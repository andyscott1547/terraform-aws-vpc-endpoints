# /examples/data_lookup/variables.tf

variable "region" {
  type        = string
  description = "value for the region"
  default     = "eu-west-1"
}

variable "tags" {
  type        = map(string)
  description = "value for the tags"
  default     = {}
}

variable "interface_endpoints" {
  type        = list(string)
  description = "List of interface endpoints to create"
}

variable "gateway_endpoints" {
  type        = list(string)
  description = "List of gateway endpoints to create"
}

variable "managed_private_dns_enabled" {
  type        = bool
  description = "Enable AWS managed private DNS for VPC endpoints, if set to fasle private DNS zones and records will be created for use in a centralized solution"
  default     = true
}