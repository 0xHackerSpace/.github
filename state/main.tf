terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 6.0"
    }

  }
  required_version = ">= 1.0"

  backend "local" {
    path = "terraform.tfstate"
  }
}

provider "github" {
  owner = var.github_organization
  app_auth {
    id              = var.app_id
    installation_id = var.app_installation_organization_id
    pem_file        = file(var.app_pem_file)
  }
}
