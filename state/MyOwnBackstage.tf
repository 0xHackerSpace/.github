
resource "github_repository" "MyOwnBackstage" {
  name          = "MyOwnBackstage"
  description   = "repository for MyOwnBackstage project, a centralized repo for backstage plugins, templates, and configurations"
  visibility    = "private"
  has_issues    = true
  has_wiki      = true
  has_projects  = false
  has_downloads = false

  allow_merge_commit     = true
  allow_squash_merge     = true
  allow_rebase_merge     = true
  auto_init              = true
  delete_branch_on_merge = true
  topics                 = ["idp", "backstage"]
}

# resource "github_actions_organization_variable" "sub_domain" {
#   variable_name     = "SUB_DOMAIN"
#   visibility      = "private"
#   value = "${local.repository_name}.${var.MAIN_DOMAIN}"
# }
