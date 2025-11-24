resource "aws_instance" "DemoInstance" {
  ami                         = var.ami
  key_name                    = var.key_name
  instance_type               = var.instance_type
  subnet_id                   = aws_subnet.Demo-Subnet-1.id
  vpc_security_group_ids      = [aws_security_group.DemoSG.id]
  associate_public_ip_address = true
  tags = {
    "Name" = var.instance_name
  }
  user_data = <<EOF
#!/bin/bash
apt update -y
apt install nginx -y
service nginx start
echo "*************************************************************" 
echo "<h1><center>Web-Server</center></h1>" >> /var/www/html/index.nginx-debian.html
EOF
}
