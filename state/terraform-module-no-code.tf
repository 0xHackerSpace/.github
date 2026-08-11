resource "github_repository" "terraform_module_no_code" {
  name        = "terraform-module-no-code"
  description = "This repository contains a Terraform module that does not contain any code. It is used to demonstrate how to create a Terraform module without any code in it."
  visibility  = "private"
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

  topics = [
    "terraform",
    "module",
    "no-code"
  ]
}

# resource "github_actions_organization_variable" "sub_domain" {
#   variable_name     = "SUB_DOMAIN"
#   visibility      = "private"
#   value = "${local.repository_name}.${var.MAIN_DOMAIN}"
# } 
