variable "vpc_cidr" {}
variable "vpc_name" {}
# variable "cidr_public_subnet"{}
# variable "cidr_private_subnet"{}  
# variable "availability_zone"{}


resource "aws_vpc" "dev_proj_1_eu_central_1"{
    cidr_block = var.vpc_cidr

    tags = {
        Name = var.vpc_name
    }
}


# ## setting up the public subnet
# resource "aws_subnet" "dev_proj_1_public_subnets"{

#     count = length(var.cidr_public_subnet)
#     vpc_id = aws_vpc.dev_proj_1_eu_central_1.vpc_id
#     cidr_block = element(var.cidr_public_subnet,count(index))
#     availability_zone = element(var.availability_zone,count(index))

# tags = {
#     Name = "dev-proj-public-subnet - ${count.index+1}"

# }
# }




# ## setting up the public subnet
# resource "aws_subnet" "dev_proj_1_private_subnets"{

#     count = length(var.cidr_private_subnet)
#     vpc_id = aws_vpc.dev_proj_1_eu_central_1.vpc_id
#     cidr_block = element(var.cidr_private_subnet,count(index))
#     availability_zone = element(var.availability_zone,count(index))

# tags = {
#     Name = "dev-proj-private-subnet - ${count.index+1}"

# }
# }

