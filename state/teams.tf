locals {
  teams = {
    admins = {
      description = "Organization administrators"
      privacy     = "secret"
    }
    maintainers = {
      description = "Repository maintainers"
      privacy     = "closed"
    }
    contributors = {
      description = "General contributors"
      privacy     = "closed"
    }
  }
}

resource "github_team" "teams" {
  for_each = local.teams

  name        = each.key
  description = each.value.description
  privacy     = each.value.privacy
}
