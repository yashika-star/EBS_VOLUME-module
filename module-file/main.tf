module "multiple_instances" {
    source = "../Module1"
    ami = var.ami
    name = var.name
    ins_type = var.ins_type
    owner = var.owner
    security_group_ids = module.yashika_SG.security_groups_ids_output
}

module "yashika_SG" {
    source = "../Module2"
    sg_names = var.sg_names
    sg_description = var.sg_description
    sg_to_port = var.sg_to_port
    sg_protocol = var.sg_protocol

}

module "ebs_volume" {
    source = "../EBS_Module"
    inst_id = module.multiple_instances.ec2_ids
  
}