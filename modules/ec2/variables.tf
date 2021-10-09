variable "vpc_id" {
	type = string
    description = "VPC Id"
}

variable "cidr_block" {
	type = string
    description = "Subnets"
}

variable "ec2_name" {
	type = string
    description = "Ec2 Instance Name"
}

variable "ami" {
	type = string
    description = "AMI for EC2"
}

variable "instance_type" {
	type    = string
	default = "t2.micro"
}