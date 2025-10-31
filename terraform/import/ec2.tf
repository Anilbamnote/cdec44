# provider "aws" {
#     region = "us-east-1"
# }

provider "aws" {
  region = "ap-southeast-2"  # Specify the AWS region
}

# resource "aws_instance" "my_instance" {
#   ami             = "ami-07ba57196a766fc6d"
#   instance_type   = "t2.micro"
#   key_name        = "root3.0-key-sydny"
#   security_groups = ["default"]  # Ensure this security group exists

#   tags = {
#     Name = "My-Terraform-Instance"
#   }
# }








provider "aws" {
  region = "ap-southeast-2"  # Specify the AWS region
}

resource "aws_instance" "demo_import_instance" {
    instance_type = ""
    ami = ""
}



