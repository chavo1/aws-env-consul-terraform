# This repo contains a set of modules for deploying a Consul cluster Multi-DC in two AWS regions with Client VPN using Terraform.

## AWS VPCs

### [This module](https://github.com/chavo1/aws-vpc-terraform) will create two VPC in two separate AWS regions

## AWS cross-region VPC peering connection

### [This module](https://github.com/chavo1/peering-aws-vpc) will create cross-region VPC peering connection

## AWS Client VPN

### [This module](https://github.com/chavo1/client-vpn-aws-terraform) will create AWS Client VPN

## AWS EC2 (Consul servers)

### [This module](https://github.com/chavo1/aws-consul-terraform-multi-region) will create a needed number of Consul server

## Prerequisites

- [Terraform](https://www.terraform.io/downloads.html)
- [AWS Account](https://aws.amazon.com/account/)
- Basic [Consul](https://www.consul.io/) knowledge


## AWS EC2 (Consul clients) deployment.

### After deploying the Infra and Consul servers is time for Consul clients.
  - | To spin up the client agents we use [Terraform Local Backend](https://www.terraform.io/docs/backends/types/local.html#example-reference) - we just reference the data. 

#### Go to the consul_client_dc1 or/and consul_client_dc2 setup a needed count for the clients in main.tf
```
terraform init
terraform apply 
```



├── consul_client_dc1
│   ├── main.tf
│   └── scripts
│       ├── consul-template.sh
│       ├── consul.sh
│       ├── dns.sh
│       ├── kv.sh
│       ├── nginx.sh
│       └── templates
│           ├── conf.ctmpl
│           └── config.hcl
├── consul_client_dc2
│   ├── main.tf
│   └── scripts
│       ├── consul-template.sh
│       ├── consul.sh
│       ├── dns.sh
│       ├── kv.sh
│       ├── nginx.sh
│       └── templates
│           ├── conf.ctmpl
│           └── config.hcl