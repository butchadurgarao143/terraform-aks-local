terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 3.0"
    }
  }
  backend "local" {
    path = "terraform.tfstate"
  }
}

provider "azurerm" {
  features {}
}

module "aks" {
  source              = "../../modules/aks"
  aks_name            = var.aks_name
  location            = var.location
  resource_group_name = var.resource_group_name
  dns_prefix          = var.dns_prefix
  node_count          = var.node_count
}