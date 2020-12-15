# variables.tf

variable "vpc_name" {
  type = list(any)
}
variable "availabilityZone" {
  type = list(any)
}

variable "instanceTenancy" {
  default = "default"
}

variable "dnsSupport" {
  default = true
}

variable "dnsHostNames" {
  default = true
}

variable "vpcCIDRblock" {
  type = list(any)
}

variable "subnetCIDRblock" {
  type = list(any)
}

variable "destinationCIDRblock" {
  default = "0.0.0.0/0"
}

variable "ingressCIDRblock" {
  type    = list(any)
  default = ["0.0.0.0/0"]
}

variable "mapPublicIP" {
  default = true
}

# end of variables.tf

