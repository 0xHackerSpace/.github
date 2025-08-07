resource "github_repository" "wrapper" {
  name        = "wrapper"
  description = "Wrapper repository for managing infrastructure"
  visibility  = "public"

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