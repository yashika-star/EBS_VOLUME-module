variable "sg_names" {
    type = list(string)
    description = "security group name"
}

variable "sg_description" {
    type = list(string)
    description = "security group description"
}

variable "sg_to_port" {
    type = list(number)
    description = "SG to-port"
}

variable "sg_protocol" {
    type = list(string)
    description = "SG protocol"
}