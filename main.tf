terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=2.46.0"
    }
  }
    backend "azurerm" {
        resource_group_name  = "testnew"
        storage_account_name = "stsampl"
        container_name       = "tfcontainer"
        key                  = "terraform.tfstate"
    }

}

provider "azurerm" {
  features {}
    subscription_id = var.subscription_id
    client_id = var.client_id
    client_secret = var.client_secret
    tenant_id = var.tenant_id

}

resource "azurerm_resource_group" "rgtest" {
  name     = "rgnew"
  location = "eastus"
}