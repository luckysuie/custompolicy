provider "azurerm" {
  features {}
}

resource "azurerm_policy_definition" "example" {
  name         = var.policy_name
  policy_type  = "Custom"
  mode         = "All"
  display_name = var.display_name

  metadata = jsonencode({
    category = "Custom"
  })

  policy_rule = jsonencode({
    if = {
      field = "location"
      notEquals = "eastus"
    }
    then = {
      effect = "deny"
    }
  })
}

resource "azurerm_policy_assignment" "example" {
  name                 = var.assignment_name
  scope                = var.scope
  policy_definition_id = azurerm_policy_definition.example.id
}

