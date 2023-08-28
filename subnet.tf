############public_subnet#############
resource "aws_subnet" "public-subnet-terraform" {
  vpc_id                  = aws_vpc.project2.id
  cidr_block              = "10.0.10.0/24"
  map_public_ip_on_launch = true
  availability_zone       = "us-east-2a"
  tags = {
    Name = "public_subnet_jenkins"
  }
}



