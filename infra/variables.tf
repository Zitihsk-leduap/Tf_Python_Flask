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