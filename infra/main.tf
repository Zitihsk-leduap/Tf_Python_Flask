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

module "security-groups"{
    source = "./security-groups"
    vpc_id = module.networking.dev_proj_1_vpc_id
    ec2_sg_name = "SG for EC2 to enable SSH(22) and HTTP(80)"
    ec2_sg_name_for_python_api ="SG for EC2 for enabling port 5000"
    public_subnet_cidr_block = tolist(module.networking.public_subnet_cidr_block)
}



module "ec2"{
    source ="./ec2"
    ami_id =var.ec2_ami_id
    instance_type = "t2.micro"
    tag_name = "Ubuntu Linux Ec2"
    public_key = var.public_key
    subnet_id = tolist(module.networking.dev_proj_1_public_subnets)[0]
    sg_enable_ssh_https = module.security-groups.sg_ec2_sg_ssh_hhtp_id
    ec2_sg_name_for_python_api = module.security-groups.sg_ec2_for_python_api
    enable_public_ip_address = true
    user_data_install_apache = templatefile("./template/ec2_install_apache.sh",{
            TERRAFORM_VERSION = "1.6.5"

    })

}