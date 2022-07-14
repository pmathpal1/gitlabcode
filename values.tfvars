#region = "us-west-2"
mybucket = "pankajecho88"
#access_key = "AKIAV3RRTH3QL2BVGM6Z"
#secret_key = "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"
#region = "ap-south-1"
vnet = [
    {name = "pvt-vnet",cidr_block = "10.0.0.0/16"},
    {name = "pub-vnet",cidr_block = "20.0.0.0/16"},
    {name = "aws-pvc" , cidr_block = "30.0.0.0/16"}
]


subnet = [
    {name= "private-subnet" ,cidr_block = "10.0.0.0/24"},
    {name= "public-subnet" , cidr_block = "20.0.0.0/24"},
    {name= "vpc-subnet" , cidr_block = "30.0.0.0/24"}
]

