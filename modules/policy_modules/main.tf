variable "policy_name" {
  description = "Nombre de la política"
}

variable "policy_display_name" {
  description = "Nombre para mostrar de la política"
}

variable "policy_description" {
  description = "Descripción de la política"
}

variable "policy_rule" {
  description = "Regla de la política"
}

resource "azurerm_policy_definition" "custom_policy" {
  name        = var.policy_name
  display_name= var.policy_display_name
  description = var.policy_description

  policy_rule = var.policy_rule
}
