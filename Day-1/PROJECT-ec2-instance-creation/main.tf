provider "aws" {
    region = "us-west-1"  # Set your desired AWS region
}

resource "aws_instance" "example" {
  ami           = "ami-005e54dee72cc1d00" # us-west-2
    instance_type = "t2.micro"
}
