provider "aws" {
  region = "ap-south-1"  # Specify the AWS region
}



terraform {
  backend "s3" {
    bucket         	   = "new-demo-s3-backend09"
    key                    = "state/terraform.tfstate"
    region         	   = "ap-south-1"
    encrypt        	   = true
    dynamodb_table = "new"
  }
}


resource "aws_instance" "my_instance" {
  ami             = "ami-02b8269d5e85954ef"
  instance_type          = "t3.micro"
  key_name        = "mumbai-soheb"
  security_groups = ["default"]  # Ensure this security group exists

  tags = {
    Name = "My-Terraform-Instance"
  }
}