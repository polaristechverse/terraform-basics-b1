resource "aws_security_group" "DemoSG" {
  vpc_id      = aws_vpc.Demo-vpc.id
  name        = "WebSecurity"
  description = "Allow web inbound traffic and all outbound traffic"
  tags = {
    "Name" = "Prod-SG"
  }
}
resource "aws_vpc_security_group_ingress_rule" "allow_tls_ipv4" {
  security_group_id = aws_security_group.DemoSG.id
  cidr_ipv4         = "0.0.0.0/0"
  from_port         = 0
  ip_protocol       = "-1"
  to_port           = 0
}

resource "aws_vpc_security_group_egress_rule" "allow_all_traffic_ipv4" {
  security_group_id = aws_security_group.DemoSG.id
  cidr_ipv4         = "0.0.0.0/0"
  ip_protocol       = "-1"
}
