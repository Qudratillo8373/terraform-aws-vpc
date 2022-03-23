resource "aws_subnet" "private1" {
  vpc_id     = aws_vpc.main.id
  cidr_block = private_subnets_cidr[0]
}
resource "aws_subnet" "private2" {
  vpc_id     = aws_vpc.main.id
  cidr_block = private_subnets_cidr[1]
}
resource "aws_subnet" "private3" {
  vpc_id     = aws_vpc.main.id
  cidr_block = private_subnets_cidr[2]
}


resource "aws_route_table" "gw" {
  vpc_id = aws_vpc.main.id
  route{
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw.id
  }
}