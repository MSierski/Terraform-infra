terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm" 
      version = "~>2.86.0" 
    }
  }
}

provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "tfrg" {
  name = "rg-sapui5test"
  location = "West Europe"
}

resource "azurerm_storage_account" "tfsa" {
  name                     = "storagesapuitest"
  resource_group_name      = azurerm_resource_group.tfrg.name 
  location                 = azurerm_resource_group.tfrg.location 
  account_tier             = "Standard"
  account_replication_type = "LRS"

  tags = {
  environment = "test"
  }
}

resource "azurerm_container_registry" "example" {
  name                = "msifioridockerapp"
  resource_group_name = azurerm_resource_group.tfrg.name 
  location            = azurerm_resource_group.tfrg.location 
  sku                 = "Standard"
  admin_enabled       = true
}

resource "azurerm_app_service_plan" "example" {
  name                = "msilinuxplan"
  resource_group_name = azurerm_resource_group.tfrg.name 
  location            = azurerm_resource_group.tfrg.location 
  kind                = "Linux"
  reserved            = true
    sku {
    tier = "Standard"
    size = "S1"
  }
}

