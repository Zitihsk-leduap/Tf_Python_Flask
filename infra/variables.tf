variable "bucket_name" {
  type        = string
  description = "Remote state bucket name"
  default     = "kshitiz-remote-state-bucket"
}

variable "name" {
  type        = string
  description = "Name tag for the S3 bucket"
  default     = "Dev-Project"
}

variable "environment" {
  type        = string
  description = "Environment tag for the S3 bucket"
  default     = "dev-1"
}

variable "vpc_cidr" {
  type = string
  description = "Public Subnet CIDR values"
  default = "11.0.0.0/16"
  
}
variable "vpc_name" {
  type = string
  default = "dev-proj-1-eu-central-1"
  description = "Name of the VPC"
  

}

variable "cidr_public_subnet"{
  type = list(string)
  description = "Public Subnet CIDR values"
  default = [ "11.0.1.0/24", "11.0.2.0/24"]
}


variable "cidr_private_subnet"{
  type = list(string)
  description = "Private Subent CIDR values"
  default = [ "11.0.3.0/24", "11.0.4.0/24"]
}


variable "availability_zone"{
  type = list(string)
  description = "AZs"
  default = ["eu-central-1a","eu-central-1b"]
}

variable "public_key" {
  type = string
  description = "Public key for the ec2 instance"
  default="ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIOrF5t7JpwLdGxYruT8c+oIVhY5+KIS+zE6IMvwhNlPc kshitiz@server"

  
}

variable "ec2_ami_id"{
  type = string
  description = "AMI Id for the EC2 instance"
  default = "ami-004e960cde33f9146"
}