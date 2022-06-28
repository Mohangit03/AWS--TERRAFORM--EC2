provider "aws" {
  region     = "us-east-1"
  access_key = "AKIAUZX2TEZGLJQTAHFN"
  secret_key = "EnWRLRMrF0IAaDO/QVL7ir9V8JGcVCVgGIZSlsJU"
}

# Create a ec2 instance
resource "aws_instance" "sample" {
  ami           = "ami-0c4f7023847b90238"
  instance_type = "t2.micro"
  subnet_id     = aws_subnet.main.id
  key_name      = "sample"
  security_groups = [aws_security_group.sample.id]

  tags = {
    Name = "demo-terra1"
  }
}

#create vpc

resource "aws_vpc" "samplevpc" {
  cidr_block       = "10.10.0.0/16"
}

#create subnet

resource "aws_subnet" "main" {
  vpc_id     = aws_vpc.samplevpc.id
  cidr_block = "10.10.1.0/24"
}
 

# create security group

resource "aws_security_group" "sample" {
  vpc_id      = aws_vpc.samplevpc.id

  ingress {
    description      = "TLS from VPC"
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
  }
}