# main.tf

provider "aws" {
  region = "ap-south-1"  # Modify this region as needed
}

resource "aws_instance" "example" {
  ami           = "ami-0aee0743bf2e81172"  # Amazon Linux 2 AMI
  instance_type = "t2.micro"

  tags = {
    Name = "Jenkins-EC2-Instance"
  }
}

