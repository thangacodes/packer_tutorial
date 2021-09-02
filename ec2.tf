## Code to provision a EC2 machine in AWS cloud

provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "web" {
  ami           = "ami-0269e897585b13928"
  instance_type = "t2.micro"
  key_name = "ondot"
  vpc_security_group_ids = ["sg-0fb1052b659369aa8"]
  subnet_id = "subnet-e9190a81"

  tags = {
    "Name" = "Deployed thru Packer AMI"
  }
}
