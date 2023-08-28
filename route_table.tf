resource "aws_route_table" "public-rout-table1-project" {
  vpc_id = aws_vpc.project2.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.internet_gateway2.id
  }


  tags = {
    Name = "public_route_table_project"
  }
}

resource "aws_route_table_association" "public_association1" {
  subnet_id      = aws_subnet.public-subnet-terraform.id
  route_table_id = aws_route_table.public-rout-table1-project.id
}

