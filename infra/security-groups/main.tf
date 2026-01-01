
variable "vpc_id" {}
variable "ec2_sg_name" {}
variable "ec2_sg_name_for_python_api" {}
variable "public_subnet_cidr_block" {}


resource "aws_security_group" "ec2_sg_ssh_http" {
  name = var.ec2_sg_name
  description = "Enable the ports 22 and 80"
  vpc_id = var.vpc_id



  ingress {
    description = "Allow request SSH from anywhere"
    cidr_blocks = ["0.0.0.0/0"]
    from_port = 22
    to_port = 22
    protocol = "tcp"
  }

  ingress {
    description = "Allow Http request from anywhere"
    cidr_blocks = ["0.0.0.0/0"]
    from_port = 80
    to_port = 80
    protocol = "tcp"
  }
  
  ingress {
    description = "Allow Http request from anywhere"
    cidr_blocks = ["0.0.0.0/0"]
    from_port = 443
    to_port = 443
    protocol = "tcp"
  }
  
  egress{
    description = "allow outgoing request"
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name ="Security Groups to allow SSH (22) and HTTP(80)"
  }
  
}