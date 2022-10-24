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