# main.tf
resource "null_resource" "runner" {
  count = var.os_type == "Windows" ? var.vm_count : 0  # Activar solo para Windows

  depends_on = [azurerm_virtual_machine.vm]

  provisioner "file" {
    source      = var.setup_script_path
    destination = var.setup_script_destination

    connection {
      type     = "winrm"
      user     = var.admin_username
      password = var.admin_password
      host     = module.nic.private_ip_address[count.index]
    }
  }

  provisioner "remote-exec" {
    inline = [
      var.setup_script_command
    ]

    connection {
      type     = "winrm"
      user     = var.admin_username
      password = var.admin_password
      host     = module.nic.private_ip_address[count.index]
    }
  }
}
