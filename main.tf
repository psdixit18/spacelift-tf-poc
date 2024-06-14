terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region  = "us-west-2"
  access_key = "${env.AWS_ACCESS_KEY_ID}"
  secret_key = "${env.AWS_SECRET_ACCESS_KEY_ID}"
}

resource "aws_instance" "app_server" {
  ami           = "ami-0cb72da062fa8d195"
  instance_type = "t2.micro"

  tags = {
    Name = "ExampleAppServerInstancess"
  }
}