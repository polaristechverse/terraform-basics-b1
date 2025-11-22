resource "aws_vpc" "Demo-vpc" {
  cidr_block           = var.vpc_cidr
  enable_dns_hostnames = true
  tags = {
    "Name" = var.vpc_name
  }
}

resource "aws_subnet" "Demo-Subnet-1" {
  vpc_id                  = aws_vpc.Demo-vpc.id
  cidr_block              = var.subnet_1_cidr
  availability_zone       = var.az1
  map_public_ip_on_launch = true
  tags = {
    "Name" = var.subnet_1_name
  }

}
resource "aws_subnet" "Demo-Subnet-2" {
  vpc_id                  = aws_vpc.Demo-vpc.id
  cidr_block              = var.subnet_2_cidr
  availability_zone       = var.az2
  map_public_ip_on_launch = true
  tags = {
    "Name" = var.subnet_2_name
  }

}
resource "aws_subnet" "Demo-Subnet-3" {
  vpc_id                  = aws_vpc.Demo-vpc.id
  cidr_block              = var.subnet_3_cidr
  availability_zone       = var.az3
  map_public_ip_on_launch = true
  tags = {
    "Name" = var.subnet_3_name
  }

}

resource "aws_internet_gateway" "Demo-IGW" {
  vpc_id = aws_vpc.Demo-vpc.id
  tags = {
    "Name" = var.IGW_Name
  }
}