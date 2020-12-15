variable "server_count" {
  type = map(any)

  default = {}
}

variable "dcname" {
  type = map(any)

  default = {}
}

variable "instance_type" {
  default = "t2.micro"
}

variable "ami_ohio" {
  type = map(any)

  default = {}
}

variable "ami_virginia" {
  type = map(any)

  default = {}
}

variable "consul_version" {}

variable "key_name" {}

variable "dc_net" {
  type = map(any)

  default = {
    dc1 = "16"
    dc2 = "32"
  }
}

variable "region" {
  type = map(any)

  default = {
    virginia = "us-east-1"
    ohio     = "us-east-2"
  }
}

variable "create" {
  description = "Create Module, defaults to true."
  default     = true
}

variable "name" {
  description = "Name for resources, defaults to \"consul-auto-join-instance-role-aws\"."
  default     = "consul-auto-join-aws"
}
