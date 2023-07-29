output "web_public_ip" {
  value = aws_instance.web.public_ip
}

output "web_private_ip" {
  value = aws_instance.web.private_ip
}

output "web_id" {
  value = aws_instance.web.id
}

output "web_keyname" {
  value = aws_instance.web.key_name
}
