variable "cidr_block" {
description = "Please provide a CIDR block to build a VPC"
type = string 
default = "10.0.0.0/16"
}
variable "tags"{ 
    description = "Please provide a TAG to build a VPC"
    type = map
    default = {
        Name = "Dev"
    }
}
variable "private_subnets_cidr" {
    description = "Please provide a CIDR block for private to build a VPC"
    type = list
    default = ([
        "10.0.1.0/24",
        "10.0.2.0/24",
        "10.0.3.0/24",
    ])
    }


variable "pubic_subnets_cidr" {
    description = "Please provide a CIDR block for public to build a VPC"
    type = list
    default = ([
        "10.0.1.0/24",
        "10.0.2.0/24",
        "10.0.3.0/24",
    ])
    }