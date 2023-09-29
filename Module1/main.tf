resource "aws_instance" "multiple_instances" {
  count         = 2
  ami           = var.ami[count.index]
  instance_type = var.ins_type[count.index]

  subnet_id     = "subnet-0962069167a59d185"
  tags = {
    Name  = var.name[count.index]
    Owner = var.owner[0]
  }  
    volume_tags = {
    Name  = var.name[count.index]
    Owner = var.owner[0]
  }

  security_groups = [var.security_group_ids[count.index]]

}

output "ec2_ids" {
  value = [for inst in aws_instance.multiple_instances: inst.id]
}
