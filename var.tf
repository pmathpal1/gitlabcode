/*
variable region {
    type = string
}
*/

variable mybucket{
    type = string
}

/*
variable access_key{
    type = string
}

variable secret_key{
    type = string
}
*/
variable vnet {
    type = list(object(
        {
        cidr_block = string
        name = string
        }
    ))
}
variable subnet {
    type = list(object(
        {
        cidr_block = string
        name = string
        }
    ))
}
