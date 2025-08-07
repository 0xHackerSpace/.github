terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 6.0"
    }

  }
  required_version = ">= 1.0"
  cloud { 
    
    organization = "0xHackerSpace" 

    workspaces { 
      name = "github" 
    } 
  } 

}

provider "github" {
  owner = var.GITHUB_ORGANIZATION
  app_auth {
    id              = var.GH_APP_ID
    installation_id = var.GH_APP_INSTALLATION_ORGANIZATION_ID
    pem_file        = var.GH_APP_PRIVATE_KEY
    # pem_file        = file(var.GH_APP_PRIVATE_KEY_PATH) # this is for local file
  }
}

data "github_repository" "github" {
  name = ".github"
}


resource "github_actions_variable" "github_variable_gh_app_id" {
  repository      = data.github_repository.github.name
  variable_name     = "GH_APP_ID"
  value = var.GH_APP_ID
}
resource "github_actions_variable" "github_variable_gh_app_installation" {
  repository      = data.github_repository.github.name
  variable_name     = "GH_APP_INSTALLATION_ORGANIZATION_ID"
  value = var.GH_APP_INSTALLATION_ORGANIZATION_ID
}
resource "github_actions_secret" "github_secret_gh_app_private_key" {
  repository      = data.github_repository.github.name
  secret_name     = "GH_APP_PRIVATE_KEY"
  plaintext_value = var.GH_APP_PRIVATE_KEY
}
resource "github_actions_secret" "tf_token_app_terraform_io" {
  repository      = data.github_repository.github.name
  secret_name     = "TF_TOKEN_APP_TERRAFORM_IO"
  plaintext_value = var.TF_TOKEN_APP_TERRAFORM_IO
}
resource "github_actions_organization_variable" "main_domain" {
  variable_name     = "MAIN_DOMAIN"
  visibility      = "private"
  value = var.MAIN_DOMAIN
}