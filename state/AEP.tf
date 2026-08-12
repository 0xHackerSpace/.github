# resource "github_repository" "aep" {
#   name        = "aep"
#   description = "AEP POC"
#   visibility  = "private"
#   is_template = false

#   has_issues    = true
#   has_wiki      = true
#   has_projects  = false
#   has_downloads = false

#   allow_merge_commit = true
#   allow_squash_merge = true
#   allow_rebase_merge = true
#   auto_init          = true

#   delete_branch_on_merge = true

#   topics = ["ai","ai-agent"]
# }

# module "repo_aep" {
#   source = "./modules/repo"

#   name = "aep"
#   description = "AEP POC"
#   visibility = "private"

#   has_projects  = false


#   delete_branch_on_merge = true
#   topics = ["ai","ai-agent"]
# }


# moved {
#   from = github_repository.aep
#   to  = module.repo_aep.github_repository.this
# }


# resource "github_actions_organization_variable" "sub_domain" {
#   variable_name     = "SUB_DOMAIN"
#   visibility      = "private"
#   value = "${local.repository_name}.${var.MAIN_DOMAIN}"
# } 
