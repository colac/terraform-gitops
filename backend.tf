# Backend Configuration File
terraform {
  required_version = ">=1.4.0"
  backend "azurerm" {
    #tenant_id            = "f4a1e29e-05f7-4745-a47b-8910478562d0"
    #subscription_id      = "42ced274-51ca-411e-8973-78df7811f3ad"
    resource_group_name  = "terraform-state"
    storage_account_name = "infraascodestate"
    container_name       = "container-tfstates"
    key                  = "infra/tfstate"
    #use_azuread_auth     = true 
  }
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>3.50.0"
    }
    azuread = {
      source  = "hashicorp/azuread"
      version = "~>2.36"
    }
    random = {
      source  = "hashicorp/random"
      version = "=3.1.0"
    }
  }
}
provider "azurerm" {
  features {}
}