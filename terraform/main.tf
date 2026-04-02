terraform {
  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "~> 2.0"
    }
  }
}

provider "local" {}

resource "local_file" "ansible_inventory" {
  content  = "[servers]\n192.168.56.10\n"
  filename = "${path.module}/../ansible/inventory.ini"
}