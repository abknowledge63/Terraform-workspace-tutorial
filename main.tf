provider "aws" {
  version = "~> 2.65"
  region = var.region
}

locals {
  instance_name = "${terraform.workspace}-golody-instance"
}

resource "aws_instance" "webserver" {
  
  instance_type = var.instance_type
  ami = var.ami

  tags = {
    Name = local.instance_name
  }

}