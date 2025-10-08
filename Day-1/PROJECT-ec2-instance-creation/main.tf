provider "aws" {
    region = "us-east-1"  # Set your desired AWS region
}

resource "aws_instance" "example" {
  ami           = "ami-052064a798f08f0d3"  # Amazon Linux 2023 for us-east-1
    instance_type = "t2.micro"
}
