provider "aws" {
  region = "ap-south-1"
   
}




resource "aws_instance" "demo" {
    ami = "ami-02d26659fd82cf299"
    instance_type = "t3.micro"
    key_name = "mumbai-soheb"
    security_groups = ["default"]


    tags = {
       Name = "my-terr-instance" 
    }
}