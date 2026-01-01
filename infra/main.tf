module "s3" {
    source ="./s3"
    bucket_name = var.bucket_name
    name = var.name
    environment = var.bucket_name
  
}

# At first always do the networking part

module "networking" {
    source = "./networking"
    vpc_cidr = var.vpc_cidr
    vpc_name = var.vpc_name
    # cidr_public_subnet = var.cidr_public_subnet
    # availability_zone = var.availability_zone
    # cidr_private_subnet = var.cidr_private_subnet
    cidr_public_subnet = var.cidr_public_subnet
    cidr_private_subnet = var.cidr_private_subnet
    availability_zone = var.availability_zone
    
  
}




