resource "aws_subnet" "public1" {
  vpc_id     = aws_vpc.main.id
  cidr_block =  public_subnets_cidr[0]
}
resource "aws_subnet" "public2" {
  vpc_id     = aws_vpc.main.id
  cidr_block =  public_subnets_cidr[1]
}
resource "aws_subnet" "public3" {
  vpc_id     = aws_vpc.main.id
  cidr_block =  public_subnets_cidr[2]
}

# resource "aws_route_table" "iw" {
#   vpc_id = aws_vpc.main.id
#   route{
#     cidr_block = "0.0.0.0/0"
#     gateway_id = aws_internet_gateway.igw.id
#   }
# }

