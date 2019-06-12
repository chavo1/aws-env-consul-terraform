output "client_vpn_endpoint" {
  depends_on = ["module.vpc_virginia.vpc", "module.vpc_ohio.vpc"]

  value = "${module.cvpn_sofia.client_vpn_endpoint}"
}

output "client_vpn_network_association" {
  value = "${module.cvpn_sofia.client_vpn_network_association}"
}

output "subnet_id_dc1" {
  value = "${module.consul_sofia.subnet_id}"
}

output "instance_type_dc1" {
  value = "${module.consul_sofia.instance_type}"
}

output "availability_zone_dc1" {
  value = "${module.consul_sofia.availability_zone}"
}

output "key_name_dc1" {
  value = "${module.consul_sofia.key_name}"
}

output "aws_iam_instance_profile_dc1" {
  value = "${module.consul_sofia.aws_iam_instance_profile}"
}

output "ami_id_dc1" {
  value = "${module.consul_sofia.ami_id}"
}

output "private_ip_dc1" {
  value = "${module.consul_sofia.private_ip}"
}

output "subnet_id_dc2" {
  value = "${module.consul_varna.subnet_id}"
}

output "instance_type_dc2" {
  value = "${module.consul_varna.instance_type}"
}

output "availability_zone_dc2" {
  value = "${module.consul_varna.availability_zone}"
}

output "key_name_dc2" {
  value = "${module.consul_varna.key_name}"
}

output "aws_iam_instance_profile_dc2" {
  value = "${module.consul_varna.aws_iam_instance_profile}"
}

output "ami_id_dc2" {
  value = "${module.consul_varna.ami_id}"
}

output "private_ip_dc2" {
  value = "${module.consul_varna.private_ip}"
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
