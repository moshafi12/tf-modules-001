variable "vpc_id" {
	type = string
    description = "VPC Id"
}

variable "cidr_block" {
	type = string
    description = "Subnet CIDR block"
}

variable "webserver_name" {
	type = string
    description = "Name of the webserver"
}

variable "ami" {
	type = string
    description = "AMI for EC2"
}

variable "instance_type" {
	type    = string
        description = "Instance type"
	default = "t2.micro"
}
