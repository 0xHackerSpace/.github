resource "github_repository" "hackerspaceClientGo" {
  name        = "hackerspaceClientGo"
  description = "repository for the hackerspace client go terraform provider"
  visibility  = "public"
  is_template = false

  has_issues    = true
  has_wiki      = true
  has_projects  = false
  has_downloads = false

  allow_merge_commit = true
  allow_squash_merge = true
  allow_rebase_merge = true
  auto_init          = true

  delete_branch_on_merge = true

  topics = ["go", "terraform", "provider", "hackerspace", "client"]
}

# resource "github_actions_organization_variable" "sub_domain" {
#   variable_name     = "SUB_DOMAIN"
#   visibility      = "private"
#   value = "${local.repository_name}.${var.MAIN_DOMAIN}"
# } 