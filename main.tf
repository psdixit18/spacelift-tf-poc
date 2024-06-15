terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
	spacelift = {
      source  = "spacelift-io/spacelift"
      version = "1.1.6"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region  = "us-west-2"
  access_key = ASIAQ55YAFBEHJWAAIG2
  secret_key = A9D/4Xh153zEUEjqC08pIbnS81ixF0kcyIZHJvYc
  
}

resource "aws_instance" "app_server" {
  ami           = "ami-0cb72da062fa8d195"
  instance_type = "t2.micro"

  tags = {
    Name = "ExampleAppServerInstancess"
  }
}