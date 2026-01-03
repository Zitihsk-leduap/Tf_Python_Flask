terraform {
  backend "s3" {
    bucket = "kshitiz-remote-state-bucket"
    key = "devops-project-1/terraform.tfstate"
    region = "eu-central-1"
    
  }
}