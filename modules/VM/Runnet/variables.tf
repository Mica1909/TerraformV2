# variables.tf
variable "os_type" {
  description = "Tipo de sistema operativo"
}

variable "vm_count" {
  description = "Cantidad de máquinas virtuales"
}

variable "admin_username" {
  description = "Nombre de usuario administrador"
}

variable "admin_password" {
  description = "Contraseña de usuario administrador"
}

variable "setup_script_path" {
  description = "Ruta del script de configuración"
}

variable "setup_script_destination" {
  description = "Destino del script de configuración en la máquina virtual"
}

variable "setup_script_command" {
  description = "Comando para ejecutar el script de configuración"
}
