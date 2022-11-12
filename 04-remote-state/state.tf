terraform {
  backend "s3" {
    bucket = "terraform-nayeem-b67"
    key    = "04-resources/terraform.tfstate"
    region = "us-east-1"
  }
}