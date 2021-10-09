terraform {
  required_version = ">= 0.12"
}

resource "aws_subnet" "psubnet" {
        vpc_id     = var.vpc_id
        cidr_block = var.cidr_block
}

resource "aws_instance" "ec2" {
	ami           = var.ami
	instance_type = var.instance_type
	subnet_id     = aws_subnet.psubnet.id
	tags = {
		Name = "${var.ec2_name} ec2"
	}
}