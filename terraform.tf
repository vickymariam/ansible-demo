terraform {
  required_version = ">= 1.1.0"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>3.63.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "~> 3.4.0"
    }
    time = {
      source  = "hashicorp/time"
      version = "~>0.9.1"
    }

  }

  backend "azurerm" {
    resource_group_name  = "sandbox-mgmt-rg"
    storage_account_name = "perizersandboxdevopsmgmt"
    container_name       = "ansible-container"
    key                  = "ACCOUNT_KEY"

  }
}
