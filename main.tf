resource "azurerm_resource_group" "free_tier_rg" {
  name     = "example-resources"
  location = "North Europe"
}

resource "azurerm_service_plan" "free_tier_app_service" {
  name                = "freeTierExampleAppService-${var.env[terraform.workspace]}"
  resource_group_name = azurerm_resource_group.free_tier_rg.name
  location            = azurerm_resource_group.free_tier_rg.location
  os_type             = "Linux"
  sku_name            = "F1"
}

resource "azurerm_linux_web_app" "free_tier_webapp" {
  name                = "freeTierExampleWebapp-${var.env[terraform.workspace]}"
  resource_group_name = azurerm_resource_group.free_tier_rg.name
  location            = azurerm_service_plan.free_tier_app_service.location
  service_plan_id     = azurerm_service_plan.free_tier_app_service.id

  site_config {
    always_on = false
  }
}