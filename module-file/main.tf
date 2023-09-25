module "multiple_instances" {
    source = "../instance1"
    ami = var.ami
    name = var.name
    ins_type = var.ins_type
    owner = var.owner
}

module "yashika_SG" {
    source = "../instance2"
    sg_names = var.sg_names
    sg_description = var.sg_description
    sg_to_port = var.sg_to_port
    sg_protocol = var.sg_protocol

}
