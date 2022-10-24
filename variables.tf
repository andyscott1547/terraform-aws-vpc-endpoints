# variables.tf

variable "vpc_id" {
  type        = string
  description = "The VPC ID"
}

variable "sg_name" {
  type        = string
  description = "Name of the security group usewd for VPC endpoint access"
  default     = "VPC-Endpoint-SG"
}

variable "allowed_cidr_blocks" {
  type        = list(string)
  description = "List of CIDR blocks allowed to access VPC endpoints"
  default     = ["10.0.0.0/8", "172.16.0.0/12", "192.168.0.0/16"]
}

variable "interface_endpoints" {
  type        = list(string)
  description = "List of interface endpoints to create"
  default     = []
}

variable "gateway_endpoints" {
  type        = list(string)
  description = "List of gateway endpoints to create"
  default     = []
}

variable "private_dns_enabled" {
  type        = bool
  description = "Enable private DNS for VPC endpoints"
  default     = true
}

variable "subnet_ids" {
  type        = list(string)
  description = "List of subnet IDs to use for VPC endpoints"
}

variable "route_table_ids" {
  type        = list(string)
  description = "List of route table IDs to use for VPC endpoints"
}