module "vpc_peering" {
  source = "git@github.com:chavo1/peering-aws-vpc"

  accept_region  = "${var.accept_region}"
  request_vpc_id = "${module.vpc_virginia.vpc[0]}"
  accept_vpc_id  = "${module.vpc_ohio.vpc[0]}"
  rtb_to_vpc1    = "${module.vpc_ohio.rtb[0]}"
  rtb_to_vpc3    = "${module.vpc_virginia.rtb[0]}"

}


