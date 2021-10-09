provider "aws" {
	alias  = "east"
	region = "us-east-1"
}

resource "aws_vpc" "default" {
	cidr_block = "172.31.0.0/16"
}

module "Instance" {
	source        = "./modules/ec2"
	name          = "lab-ec2-001"
	vpc_id        = aws_vpc.default.id
	cidr_block    = "172.31.0.0/16"
	ami           = "ami-02354e95b39ca8dec"
	instance_type = "t2.small"
}
