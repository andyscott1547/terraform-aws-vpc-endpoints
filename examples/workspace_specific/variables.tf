# /examples/workspace_specific/variables.tf

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

variable "managed_private_dns_enabled" {
  type        = bool
  description = "Enable AWS managed private DNS for VPC endpoints, if set to fasle private DNS zones and records will be created for use in a centralized solution"
  default     = true
}

variable "env_config" {
  type = map(any)
  description = "Environment specific values indexed by environment name"
}