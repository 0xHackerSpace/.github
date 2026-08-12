# resource "github_repository" "opa" {
#   name        = "opa"
#   description = "repository for policies related to Open Policy Agent"
#   visibility  = "public"
#   is_template = true

#   has_issues    = true
#   has_wiki      = true
#   has_projects  = false
#   has_downloads = false

#   allow_merge_commit = true
#   allow_squash_merge = true
#   allow_rebase_merge = true
#   auto_init          = true

#   delete_branch_on_merge = true

#   topics = ["open-policy-agent"]
# }

# # resource "github_actions_organization_variable" "sub_domain" {
# #   variable_name     = "SUB_DOMAIN"
# #   visibility      = "private"
# #   value = "${local.repository_name}.${var.MAIN_DOMAIN}"
# # }
