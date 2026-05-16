resource "github_repository" "squadAgents" {
  name        = "squadAgents"
  description = "repository for squad agents development"
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

  topics = ["squad-agents", "agents","genai"]
}
