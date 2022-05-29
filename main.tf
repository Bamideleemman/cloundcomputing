
provider "aws" {
    profile = "default"
    region = var.region_add
}


resource "aws_instance" "main_s3_bucket" {
    ami = var.ami_code
    instance_type = "t2.micro"

}

terraform {
  backend "s3" {
    bucket = "bmdassignmentbucket"
    key = "terraform-bmd.state"
    region = "us-east-1"
  }
}
