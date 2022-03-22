resource "aws_vpc" "main" {
  cidr_block = var.cidr_block
  tags   = var.tags
}


resource "aws_subnet" "private1" {
  vpc_id     = aws_vpc.main.id
  cidr_block = private_subnets_cidr[0]
}


variable "private_subnets_cidr" {
    type = "list"
}



resource "aws_subnet" "private2" {
  vpc_id     = aws_vpc.main.id
  cidr_block = private_subnets_cidr[1]
}


resource "aws_subnet" "private3" {
  vpc_id     = aws_vpc.main.id
  cidr_block = private_subnets_cidr[2]
}