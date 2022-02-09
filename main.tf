terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.27"
    }
  }

  required_version = ">= 0.14.9"
}

provider "aws" {
  profile = "default"
  region  = "us-east-1"
  shared_credentials_file = "~/.aws/credentials"
}

resource "aws_instance" "app_server" {
  ami           = "ami-04505e74c0741db8d"
  instance_type = "t2.micro"
  key_name = "iac-ec2-animes"
  user_data = <<-EOF
                    #!/bin/bash
                    cd /home/ubuntu
                    echo "<h1>Feito com terraform</h1>" > index.html
                    nohub busybox httpd -f -p 8080 &
                EOF
  tags = {
    Name = "Animes Instancia teste"
  }
}

