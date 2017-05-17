provider "aws" {
  access_key = ""
  secret_key = ""
  region     = "eu-west-1"
}

resource "aws_instance" "example" {
  ami           = "ami-a8d2d7ce"
  instance_type = "t2.micro"
}