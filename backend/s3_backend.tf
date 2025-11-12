terraform {
  backend "s3" {
    bucket         = "atlantis-bucket-1692"
    key            = "terraform-poc/terraform.tfstate"
    region         = "eu-north-1"
    encrypt        = true
  }
}
