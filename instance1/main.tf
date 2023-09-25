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

}

