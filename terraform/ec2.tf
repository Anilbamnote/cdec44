provider "aws" {
  region = "ap-south-1"
   
}

resource "aws_security_group" "my_sg" {
    name = "my-sg"
    description = "allow HTTP Port"
    ingress {
        from_port        = 80
        to_port          = 80
        protocol         = "TCP"
        cidr_blocks      = ["0.0.0.0/0"]
    }
     ingress {
        from_port        = 22
        to_port          = 22
        protocol         = "TCP"
        cidr_blocks      = ["0.0.0.0/0"]
    }
    egress {
        from_port        = 0
        to_port          = 0
        protocol         = "-1"
        cidr_blocks      = ["0.0.0.0/0"]
    }
}


resource "aws_instance" "demo" {
    ami = var.image_id
    instance_type = var.instance_type
    key_name = var.key_pair
   # security_groups = ["default"]
     vpc_security_group_ids = [aws_security_group.my_sg.id]

    tags = {
       Name = "my-terr-instance" 
    }
}

variable "image_id" {
  type = string
  default = "ami-02d26659fd82cf299"
  #desc = "THIS IS MY IMAGE_ID"
}

variable "instance_type" {
  type = string
  default = "t3.micro"
}
variable "key_pair" {
  type = string
  default = "mumbai-soheb"
}