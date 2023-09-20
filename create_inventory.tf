locals {
  vm_ip = azurerm_linux_virtual_machine.main.public_ip_address
}

resource "local_file" "ansible_inventory" {
  filename = "./ansible/inventory"
  file_permission = "0666"
  content = <<EOF
${local.vm_ip}
EOF
  
  provisioner "local-exec" {
    command = "ansible-playbook ./ansible/create_website.yml -i ./ansible/inventory -u adminuser -K"
  }
}