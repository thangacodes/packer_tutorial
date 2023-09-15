resource "null_resource" "one" {
  provisioner "local-exec" {
    command = "ls -lrt /c/technical/"
  }
}
