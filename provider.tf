terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">=3.0.0"
    }
  }
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  skip_provider_registration = "true"
  features {}

  subscription_id = "9bfb5626-2e76-4b4e-bc16-0f6d0a58cac9"
}
