resource "aws_security_group" "pub_security_gr_project" {
  name        = "allow_public"
  description = "Allow TLS inbound traffic"
  vpc_id      = aws_vpc.project2.id

  ingress {
    description = "TLS from VPC"
    from_port   = 0
    to_port     = 65535
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "pub_security_gr_project"
  }
}


