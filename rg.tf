terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.0.0"
    }
  }
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  subscription_id = "8e31d1d4-7aa9-4b0a-9687-fdca97e1bd8c"
  features {}
}
resource "azurerm_resource_group" "rg101" {
  name     = "rgsuraj44"
  location = "West Europe"
}
resource "azurerm_virtual_network" "vnet202" {
  name                = "vnetsuraj44"
  location            = azurerm_resource_group.rg101.location
  resource_group_name = azurerm_resource_group.rg101.name
  address_space       = ["10.0.0.0/16"]
   
  }
