resource "github_repository" "mcpHCPTerraform" {
  name        = "mcpHCPTerraform"
  description = "repository for mcp HCP terraform"
  visibility  = "public"
  template {
    owner = "0xHackerSpace"
    repository = "mcpTemplate"
  }

  has_issues    = true
  has_wiki      = true
  has_projects  = false
  has_downloads = false

  allow_merge_commit = true
  allow_squash_merge = true
  allow_rebase_merge = true
  auto_init          = true

  delete_branch_on_merge = true

  topics = ["python", "mcp","gen-ai", "template"]
}
