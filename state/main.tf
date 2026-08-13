terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 6.0"
    }
    tfe = {
      version = "~> 0.79.0"
    }

  }
  required_version = ">= 1.15"
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

provider "tfe" {
  hostname = "app.terraform.io"
  token    = var.TF_TOKEN_APP_TERRAFORM_IO
}


data "github_repository" "github" {
  name = ".github"
}


resource "github_actions_variable" "github_variable_gh_app_id" {
  depends_on    = [data.github_repository.github]
  repository    = data.github_repository.github.name
  variable_name = "GH_APP_ID"
  value         = var.GH_APP_ID
}
resource "github_actions_variable" "github_variable_gh_app_installation" {
  depends_on    = [data.github_repository.github]
  repository    = data.github_repository.github.name
  variable_name = "GH_APP_INSTALLATION_ORGANIZATION_ID"
  value         = var.GH_APP_INSTALLATION_ORGANIZATION_ID
}
resource "github_actions_secret" "github_secret_gh_app_private_key" {
  depends_on      = [data.github_repository.github]
  repository      = data.github_repository.github.name
  secret_name     = "GH_APP_PRIVATE_KEY"
  plaintext_value = var.GH_APP_PRIVATE_KEY
}
resource "github_actions_secret" "tf_token_app_terraform_io" {
  depends_on      = [data.github_repository.github]
  repository      = data.github_repository.github.name
  secret_name     = "TF_TOKEN_APP_TERRAFORM_IO"
  plaintext_value = var.TF_TOKEN_APP_TERRAFORM_IO
}
resource "github_actions_organization_variable" "main_domain" {
  variable_name = "MAIN_DOMAIN"
  visibility    = "private"
  value         = var.MAIN_DOMAIN
}



### AI MODELS
resource "github_actions_secret" "gh_token_ai_models" {
  depends_on      = [data.github_repository.github]
  repository      = data.github_repository.github.name
  secret_name     = "GH_TOKEN_AI_MODELS"
  plaintext_value = var.GH_TOKEN_AI_MODELS
}
resource "github_actions_variable" "gh_url_ai_models" {
  depends_on    = [data.github_repository.github]
  repository    = data.github_repository.github.name
  variable_name = "GH_URL_AI_MODELS"
  value         = var.GH_URL_AI_MODELS
}
resource "github_actions_variable" "gh_ai_model" {
  depends_on    = [data.github_repository.github]
  repository    = data.github_repository.github.name
  variable_name = "GH_AI_MODEL"
  value         = var.GH_AI_MODEL
}




# resource "tfe_project" "config" {
#   organization = data.tfe_organization.HackerSpace.name
#   name = "config"
# }

# resource "tfe_variable_set" "test" {
#   name              = "Project-owned Varset"
#   description       = "Varset that is owned and managed by a project."
#   organization      = data.tfe_organization.HackerSpace.name
#   parent_project_id = tfe_project.config.id
# }


# resource "tfe_variable" "test-a" {
#   key             = "seperate_variable"
#   value           = "my_value_name"
#   category        = "terraform"
#   description     = "a useful description"
#   variable_set_id = tfe_variable_set.test.id
# }

