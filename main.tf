terraform {

  required_providers {
      aws = {
          source = "hashicorp/aws"
          version = "~> 3.27"
      }
  }
  required_version = ">= 0.14.9"
}

provider "aws" {}


resource "aws_instance" "app_server" {
    ami = "ami-0022f774911c1d690"
    instance_type = "t2.micro"

    tags = {
        Name = "ExampleAppServerInstance"
    }
}

