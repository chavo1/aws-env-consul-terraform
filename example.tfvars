key_name = "chavo"
server_count = {
  virginia = 1
  ohio     = 1
}
vpc_name = [
  "virginia",
  "ohio",
]
availabilityZone = [
  "us-east-1a",
  "us-east-2a",
]
subnetCIDRblock = [
  "172.31.16.0/22",
  "172.31.32.0/22",
]
vpcCIDRblock = [
  "172.31.16.0/20",
  "172.31.32.0/20",
]
consul_version = "1.9.0"
dcname = {
  dc1 = "virginia"
  dc2 = "ohio"
}
ami_ohio = {
  "1.9.0" = "ami-08eda32c2c3466070"
  "1.4.4" = "< Needed AMI >"
}
ami_virginia = {
  "1.9.0" = "ami-054ebf6fcb24c16f0"
  "1.4.4" = "< Needed AMI >"
}
accept_region = "us-east-2"
