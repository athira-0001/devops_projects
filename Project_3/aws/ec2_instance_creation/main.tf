terraform {
        required_providers {
                aws= {
                        source = "hashicorp/aws"
                        version = "~> 5.0"
                }
        }
        required_version = ">= 1.2.0"
}

provider "aws" {
        region = "eu-north-1"
}

resource "aws_instance" "app_server" {
        ami = "ami-0c1ac8a41498c1a9c"
        instance_type = "t3.micro"

        tags ={
                Name = "Terraform_Demo"
}
}

