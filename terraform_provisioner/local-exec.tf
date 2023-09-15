## provision a vm in aws and it will execute linux command to list out files in local systems.

resource "aws_instance" "provisioner" {
  instance_type          = var.vm_spec
  ami                    = var.imageid
  vpc_security_group_ids = var.sgp
  key_name               = var.key
  connection {
    type        = "ssh"
    user        = "ec2-user"
    private_key = file("admin.pem")
    host        = self.public_ip
  }
  provisioner "file" {
    source      = "yum.sh"
    destination = "/tmp/yum.sh"
  }
  provisioner "local-exec" {
    command = "ls -l /tmp/"
  }
  provisioner "local-exec" {
    command = "ls -l /c/technical/"
  }
  tags = merge(var.tagging, { Name = "local-exec-vm" })
}



