variable "outbound_name" {
  description = "The friendly name of the Route 53 Resolver endpoint"
  type        = string
  default     = null
}

variable "outbound_allowed_resolvers" {
  default     = []
  description = "List of allowed CIDRs. For inbound endpoints, this should be the list of CIDRs allowed to query. For outbound endpoints, this should be the list of DNS servers the endpoint will talk to."
  type        = list(string)
}

variable "outbound_vpc_id" {
  description = "VPC ID to place resolver endpoints in"
  type        = string
}

variable "outbound_ip_addresses" {
  description = "Specify subnets and IP addresses to use for your endpoints. subnet_id is mandatory, ip is optional"
  type        = list(map(any))

  # syntax:
  # object({
  #    subnet_id = string
  #    ip        = string
  #  }
}

variable "inbound_name" {
  description = "The friendly name of the Route 53 Resolver endpoint"
  type        = string
  default     = null
}

variable "inbound_allowed_resolvers" {
  default     = []
  description = "List of allowed CIDRs. For inbound endpoints, this should be the list of CIDRs allowed to query. For outbound endpoints, this should be the list of DNS servers the endpoint will talk to."
  type        = list(string)
}

variable "inbound_vpc_id" {
  description = "VPC ID to place resolver endpoints in"
  type        = string
}

variable "inbound_ip_addresses" {
  description = "Specify subnets and IP addresses to use for your endpoints. subnet_id is mandatory, ip is optional"
  type        = list(map(any))

  # syntax:
  # object({
  #    subnet_id = string
  #    ip        = string
  #  }
}

variable "rule_name" {
  description = "Rule Name"
  type        = string
}

variable "rule_associated_vpcs" {
  description = "List of VPC IDs to associate rule to"
  type        = list(string)
}

variable "forward_domain" {
  description = "Domain name to forward requests for"
  type        = string
}

variable "rule_forward_ips" {
  description = "List of IPs to forward DNS requests to"
  type        = list(string)
}

variable "resource_share_accounts" {
  default     = []
  description = "List of account IDs to share this resolver rule with"
  type        = list(string)
}