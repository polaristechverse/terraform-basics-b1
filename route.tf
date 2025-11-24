resource "aws_route_table" "DemoPublicRoute" {
  vpc_id = aws_vpc.Demo-vpc.id
  tags = {
    "Name" = var.public_route_name
  }
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.Demo-IGW.id
  }
}

resource "aws_route_table_association" "DemoPublicSubnet1Association" {
  route_table_id = aws_route_table.DemoPublicRoute.id
  subnet_id      = aws_subnet.Demo-Subnet-1.id
}

resource "aws_route_table_association" "DemoPublicSubnet2Association" {
  route_table_id = aws_route_table.DemoPublicRoute.id
  subnet_id      = aws_subnet.Demo-Subnet-2.id
}

resource "aws_route_table_association" "DemoPublicSubnet3Association" {
  route_table_id = aws_route_table.DemoPublicRoute.id
  subnet_id      = aws_subnet.Demo-Subnet-3.id
}