resource "aws_eip" "example" {

allocate_id = aws_eip.example.id
subnet_id  = aws_subnet.example.id
     vpc     = true 

        tags  = {
            Name = "Dev"
        }



    depends_on = {aws_internet_gateway.main}
}