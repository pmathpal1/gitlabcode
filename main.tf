# Configure the AWS Provider
provider "aws" {
   #region     = var.region
   #access_key = var.access_key
   #secret_key = var.secret_key   
}



  terraform {
  backend "s3" {
    bucket = "pankajbucket11"
    key    = "terraform.tfstate"
    region = "ap-south-1"
  }
}

resource "aws_s3_bucket" "s3bucket" {
  bucket = var.mybucket

}
resource "aws_vpc" "vnet" {
    count = length(var.vnet)
    #name = var.vnet[count.index].name
    cidr_block = var.vnet[count.index].cidr_block
  tags = {
    Name = var.vnet[count.index].name
  }
}

resource "aws_subnet" "subnet" {
   count = length(var.subnet)
   vpc_id     = aws_vpc.vnet[count.index].id
   cidr_block = var.subnet[count.index].cidr_block

tags = {
    Name = var.subnet[count.index].name
  }

}