provider "azurerm" {
  features = {}
}

module "restrict_region" {
  source = "../policy_module"

  policy_name        = "restrict-region"
  policy_display_name= "Restrict Resources to a Region"
  policy_description = "This policy restricts the creation of resources to a specific region."

  policy_rule = <<POLICY_RULE
    {
      "if": {
        "not": {
          "field": "location",
          "in": ["East US", "West US"]
        }
      },
      "then": {
        "effect": "deny"
      }
    }
  POLICY_RULE
}
