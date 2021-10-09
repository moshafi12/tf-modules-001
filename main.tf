provider "aws" {
	alias  = "east"
	region = "us-east-1"
}

resource "aws_vpc" "main" {
	cidr_block = "172.31.0.0/16"
}

module "webserver" {
	source         = "./modules/ec2"
	vpc_id         = aws_vpc.main.id
	cidr_block     = "172.31.0.0/16"
    webserver_name = "Mo Module Test"
	ami            = "ami-02354e95b39ca8dec"
	instance_type  = "t2.small"
}
