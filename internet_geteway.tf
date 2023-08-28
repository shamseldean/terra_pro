resource "aws_internet_gateway" "internet_gateway2" {
  vpc_id = aws_vpc.project2.id

  tags = {
    Name = "internet_gateway1"
  }
}