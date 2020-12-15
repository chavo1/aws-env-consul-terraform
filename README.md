# This repo contains a set of modules for deploying a Consul cluster Multi-DC in two AWS regions.

## AWS VPCs

### [This module](https://github.com/chavo1/aws-vpc-terraform) will create two VPC in two separate AWS regions

## AWS cross-region VPC peering connection

### [This module](https://github.com/chavo1/peering-aws-vpc) will create cross-region VPC peering connection

## AWS EC2 (Consul servers)

### [This module](https://github.com/chavo1/aws-consul-terraform-multi-region) will create a needed number of Consul server

## Prerequisites

- [Terraform](https://www.terraform.io/downloads.html)
- [AWS Account](https://aws.amazon.com/account/)
- Basic [Consul](https://www.consul.io/) knowledge

### Clone the repo
```
git clone https://github.com/chavo1/aws-env-consul-terraform.git
cd aws-env-consul-terraform
terraform init
terraform apply
```
## AWS EC2 (Consul clients) deployment.

### After deploying the Infra and Consul servers is time for Consul clients.
  - | To spin up the client agents we use [Terraform Local Backend](https://www.terraform.io/docs/backends/types/local.html#example-reference) - we just reference the data. 

#### Go to the consul_client_dc1 or/and consul_client_dc2 setup a needed count for the clients in main.tf
```
terraform init
terraform apply 
```
### To test you will need Kitchen and Selenium:

- Kitchen provides a test harness to execute infrastructure code on one or more platforms in isolation.
- Install [kitchen.ci](https://kitchen.ci/)
- Install [selenium](https://www.ranorex.com/resources/testing-wiki/selenium-testing/) and all its dependencies on Mac with [brew](https://brew.sh)

```
$ brew install selenium-server-standalone
$ brew cask install java

# GeckoDriver for firefox
$ brew install geckodriver 

# Chromedriver for chrome
$ brew cask install chromedriver 
```
#### If you use `rbenv` set local to `2.6.0`
```
$ rbenv local 2.6.0
```
Than simply execute a following commands:
```
bundle exec kitchen converge
bundle exec kitchen verify
bundle exec kitchen destroy
```