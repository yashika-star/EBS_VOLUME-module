resource "aws_ebs_volume" "my_volume" {
    count = 2
    availability_zone = "ap-south-1a"
    size              = 1
    tags = {
      "Name": "Yashika_Volume_${count.index+1}"
    }
}

resource "aws_volume_attachment" "ebs_att" {
    count = 2
    device_name = "/dev/sdh"
    volume_id   = aws_ebs_volume.my_volume[count.index].id
    instance_id = var.inst_id[count.index]
}