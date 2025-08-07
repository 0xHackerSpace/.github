locals {
    repository_name = "myracle"
    description     = "repository for myracle project, a centralized repo for ai (models,prompts, rags,mcps, etc.)"
}


resource "github_repository" "myracle" {
  name        = local.repository_name
  description = local.description
  visibility  = "private"

  has_issues    = true
  has_wiki      = true
  has_projects  = false
  has_downloads = false

  allow_merge_commit = true
  allow_squash_merge = true
  allow_rebase_merge = true
  auto_init         = true

  delete_branch_on_merge = true
  
  topics = ["ai", "machine-learning", "data-science", "prompts", "rag", "mcp", "models"]
}

# resource "github_actions_organization_variable" "sub_domain" {
#   variable_name     = "SUB_DOMAIN"
#   visibility      = "private"
#   value = "${local.repository_name}.${var.MAIN_DOMAIN}"
# }
