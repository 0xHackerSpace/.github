module "github_repos" {
  source = "./modules/repo"

  for_each = local.repos

  name        = each.value.name
  description = each.value.description
  visibility  = each.value.visibility
  is_template  = each.value.is_template

  has_issues    = each.value.has_issues
  has_wiki      = each.value.has_wiki
  has_projects  = each.value.has_projects
  has_downloads = each.value.has_downloads

  allow_merge_commit  = each.value.allow_merge_commit
  allow_squash_merge  = each.value.allow_squash_merge
  allow_rebase_merge   = each.value.allow_rebase_merge
  auto_init            = each.value.auto_init
  
  delete_branch_on_merge = each.value.delete_branch_on_merge

  topics = each.value.topics

  template=try(each.value.template, null)

}


 moved {
   from = module.repo_aep.github_repository.this
   to  = module.github_repos["repo_aep"].github_repository.this
 }


moved {
   from = github_repository.aep_harness
   to  = module.github_repos["repo_aep_harness"].github_repository.this
 }

moved {
   from = github_repository.customTfProvider
   to  = module.github_repos["repo_customTfProvider"].github_repository.this
 }
moved {
   from = github_repository.featureFlag
   to  = module.github_repos["repo_featureFlag"].github_repository.this
 }

moved {
   from = github_repository.hackerspaceClientGo
   to  = module.github_repos["repo_hackerspaceClientGo"].github_repository.this
}
moved {
   from = github_repository.ingredient
   to  = module.github_repos["repo_ingredient"].github_repository.this
}
moved {
   from = github_repository.mcpHCPTerraform
   to  = module.github_repos["repo_mcpHCPTerraform"].github_repository.this
}
moved {
   from = github_repository.mcpTemplate
   to  = module.github_repos["repo_mcpTemplate"].github_repository.this
}
moved {
   from = github_repository.MyOwnBackstage
   to  = module.github_repos["repo_myOwnBackstage"].github_repository.this
}
moved {
   from = github_repository.myracle
   to  = module.github_repos["repo_myracle"].github_repository.this
}
moved {
   from = github_repository.myTfProvider
   to  = module.github_repos["repo_myTfProvider"].github_repository.this
}
moved {
   from = github_repository.opa
   to  = module.github_repos["repo_opa"].github_repository.this
}
moved {
   from = github_repository.squadAgents
   to  = module.github_repos["repo_squadAgents"].github_repository.this
}
moved {
   from = github_repository.terraform_module_no_code
   to  = module.github_repos["repo_terraform_module_no_code"].github_repository.this
}
moved {
   from = github_repository.terraformGithubRepo
   to  = module.github_repos["repo_terraformGithubRepo"].github_repository.this
}
moved {
   from = github_repository.wrapper
   to  = module.github_repos["repo_wrapper"].github_repository.this
}