terraform {
  backend "s3" {
    bucket         = "atlantis-bucket-1692"
    key            = "terraform-poc/terraform.tfstate"
    region         = "eu-north-1"
    encrypt        = true
  }
}

provider "aws" {
  region = "eu-north-1"
}

module "ec2_instance" {
  source        = "../modules/ec2"
  ami           = "ami-0fa91bc90632c73c9"
  instance_type = "t3.micro"
  subnet_id     = "subnet-091df25f41ee31902"
  instance_name = "atlantis-instance"
}
