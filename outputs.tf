output "client_vpn_endpoint" {
  depends_on = ["module.vpc_virginia.vpc", "module.vpc_ohio.vpc"]

  value = "${module.cvpn_sofia.client_vpn_endpoint}"
}

output "client_vpn_network_association" {
  value = "${module.cvpn_sofia.client_vpn_network_association}"
}

output "subnet_id_dc1" {
  value = "${module.consul_virginia.subnet_id}"
}

output "instance_type_dc1" {
  value = "${module.consul_virginia.instance_type}"
}

output "availability_zone_dc1" {
  value = "${module.consul_virginia.availability_zone}"
}

output "key_name_dc1" {
  value = "${module.consul_virginia.key_name}"
}

output "aws_iam_instance_profile_dc1" {
  value = "${module.consul_virginia.aws_iam_instance_profile}"
}

output "ami_id_dc1" {
  value = "${module.consul_virginia.ami_id}"
}

output "private_ip_dc1" {
  value = "${module.consul_virginia.private_ip}"
}

output "subnet_id_dc2" {
  value = "${module.consul_ohio.subnet_id}"
}

output "instance_type_dc2" {
  value = "${module.consul_ohio.instance_type}"
}

output "availability_zone_dc2" {
  value = "${module.consul_ohio.availability_zone}"
}

output "key_name_dc2" {
  value = "${module.consul_ohio.key_name}"
}

output "aws_iam_instance_profile_dc2" {
  value = "${module.consul_ohio.aws_iam_instance_profile}"
}

output "ami_id_dc2" {
  value = "${module.consul_ohio.ami_id}"
}

output "private_ip_dc2" {
  value = "${module.consul_ohio.private_ip}"
}

output "vpc_virginia_id" {
  value = "${module.vpc_virginia.vpc}"
}

output "vpc_ohio_id" {
  value = "${module.vpc_ohio.vpc}"
}

output "aws_security_group_virginia" {
  value = "${module.vpc_virginia.aws_security_group}"
}

output "aws_security_group_ohio" {
  value = "${module.vpc_ohio.aws_security_group}"
}

output "subnet_virginia" {
  value = "${module.vpc_virginia.subnet}"
}

output "subnet_ohio" {
  value = "${module.vpc_ohio.subnet}"
}

output "rtb_virginia" {
  value = "${module.vpc_virginia.rtb}"
}

output "rtb_ohio" {
  value = "${module.vpc_ohio.rtb}"
}
