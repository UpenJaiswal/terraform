variable "region" {
  default = "us-east-1"
}

variable "shared_credentials_file" {
  default = "/home/upen/.aws/credentials"
}

variable "profile" {
  default = "terraform"
}


provider "aws" {
  region                  = "${var.region}"
  shared_credentials_file = "${var.shared_credentials_file}"
  profile                 = "${var.profile}"
 }


resource "aws_instance" "web" {
  ami = "ami-a4dc46db"
  instance_type = "t2.micro"
  tags {
    Name = "upen"
  }

 }
