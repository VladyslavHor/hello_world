terraform {

  backend "local" {
    path = "terraform.tfstate"
  }
}

resource "null_resource" "example" {
  triggers = {
    always_run = timestamp()
  }
  provisioner "local-exec" {
    command = "This command will execute every time during Terraform apply command"
  }
}