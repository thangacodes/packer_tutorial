output "vmpublicip" {
  value = aws_instance.provisioner.public_ip
}
output "vmprivateip" {
  value = aws_instance.provisioner.private_ip
}
output "labvmpvtip" {
  value = aws_instance.lab.private_ip
}
output "labvmpubip" {
  value = aws_instance.lab.public_ip
}
