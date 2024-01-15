terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.87.0"
    }
  }
}

#az login --tenant 2f56f3bb-d917-4230-a196-343f8af78cf8
# Configure the Microsoft Azure Provider
provider "azurerm" {
    subscription_id = "110c3f48-26bd-4c13-bf58-3647aa710e5a"
    tenant_id = "2f56f3bb-d917-4230-a196-343f8af78cf8"
    client_id = "e287a152-2dd7-4bc3-ae78-0c8c6100f081"
    client_secret = "D-m8Q~MoKZPVyf53tGpRU~LSdcEPz5Yr1bYlWbqF"
  features {}
}
resource "azurerm_resource_group" "rg" {
  name     = "testresourcegrp"
  location = "West Europe"
}