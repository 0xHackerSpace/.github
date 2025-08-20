
# module "myracle" {
#   source = "./modules/repo"

#   providers = {
#     github = github
#   }

#   name = "myracle"
#   description     = "repository for myracle project, a centralized repo for ai (models,prompts, rags,mcps, etc.)"
#   visibility      = "private"
#   has_issues      = true
#   has_wiki        = true
#   has_projects    = false
#   has_downloads   = false

#   allow_merge_commit = true
#   allow_squash_merge = true
#   allow_rebase_merge = true
#   auto_init         = true

#   delete_branch_on_merge = true

#   topics = ["ai", "machine-learning", "data-science", "prompts", "rag", "mcp", "models"]

# }

resource "github_repository" "myracle" {
  name        = "myracle"
  description = "repository for myracle project, a centralized repo for ai (models,prompts, rags,mcps, etc.)"
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
