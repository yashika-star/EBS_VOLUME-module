output "security_groups_ids_output" {
  value = [for sg in aws_security_group.yashika_SG: sg.id]
}