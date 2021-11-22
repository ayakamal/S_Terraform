output "public_subnet_id_1" {
  value = aws_subnet.public1.id
}
output "public_subnet_id_2" {
  value = aws_subnet.public2.id
}
output "vpc_id" {
  value = aws_vpc.myvpc.id
}
output "bastion_id" {
  value = aws_security_group.sg_bastion.id
}
output "application_id" {
  value = aws_security_group.sg_application.id
}