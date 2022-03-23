output vpc_id {
    value = aws_vpc.main.id
}

output "arn" {
    value = aws_vpc.main.arn
}

output "aws_subnet_id" {
    value = toset ([
        "aws_subnet.public1.id",
        "aws_subnet.public2.id",
        "aws_subnet.public3.id",
        "aws_subnet.public1.id",
        "aws_subnet.public2.id",
        "aws_subnet.public3.id",
    ])
}