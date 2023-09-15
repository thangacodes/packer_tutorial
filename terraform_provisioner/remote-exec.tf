## provision a vm in aws and it will use remote-exec provisioner to execute some commands in remote machines.

resource "aws_instance" "lab" {
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
  provisioner "remote-exec" {
    inline = ["echo '****** Checking instance private ip address ******'",
      "hostname > /tmp/ip.txt",
      "ls -lrt /tmp",
      "sh /tmp/yum.sh"
    ]
  }
  tags = merge(var.tagging, { Name = "remote-exec-vm" })
}

