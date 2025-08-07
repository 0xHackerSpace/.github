locals {
    repository_name_ingredient = "ingredient"
    description_ingredient      = "repository for ingredient project"
}


resource "github_repository" "ingredient" {
  name        = local.repository_name_ingredient
  description = local.description_ingredient 
  visibility  = "private"
  is_template = true 

  has_issues    = true
  has_wiki      = true
  has_projects  = false
  has_downloads = false

  allow_merge_commit = true
  allow_squash_merge = true
  allow_rebase_merge = true
  auto_init         = true

  delete_branch_on_merge = true
  
  topics = ["infrastructure", "terraform", "wrapper"]
}

# resource "github_actions_organization_variable" "sub_domain" {
#   variable_name     = "SUB_DOMAIN"
#   visibility      = "private"
#   value = "${local.repository_name}.${var.MAIN_DOMAIN}"
# }
