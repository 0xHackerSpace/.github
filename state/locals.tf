locals {
	repos = {
		"repo_aep" = {
			name        = "aep"
			description = "AEP POC"
			visibility = "private"
			is_template =false
			has_issues= true
			has_wiki= true
			has_projects= false
			has_downloads= false
			allow_merge_commit= true
			allow_squash_merge= true
			allow_rebase_merge= true
			auto_init= true
			delete_branch_on_merge = true
  			topics = ["ai","ai-agent"]
		}
		"repo_aep_harness" = {
			name        = "aep_harness"
			description = "AEP Harness for AI Agent"
			visibility = "private"
			is_template =false
			has_issues= true
			has_wiki= true
			has_projects= false
			has_downloads= false
			allow_merge_commit= true
			allow_squash_merge= true
			allow_rebase_merge= true
			auto_init= true
			delete_branch_on_merge = true
  			topics = ["ai","ai-agent"]
		}
		"repo_customTfProvider" = {
			name        = "customTfProvider"
			description = "repository for custom terraform provider development"
			visibility = "public"
			is_template =false
			has_issues= true
			has_wiki= true
			has_projects= false
			has_downloads= false
			allow_merge_commit= true
			allow_squash_merge= true
			allow_rebase_merge= true
			auto_init= true
			delete_branch_on_merge = true
  			topics = ["terraform", "custom-provider"]
		}
		"repo_featureFlag" = {
			name        = "featureFlag"
			description = "repository for custom terraform provider development"
			visibility = "public"
			is_template =false
			has_issues= true
			has_wiki= true
			has_projects= false
			has_downloads= false
			allow_merge_commit= true
			allow_squash_merge= true
			allow_rebase_merge= true
			auto_init= true
			delete_branch_on_merge = true
  			topics = ["terraform", "custom-provider"]
		}
		"repo_hackerspaceClientGo" = {
			name        = "hackerspaceClientGo"
			description = "repository for the hackerspace client go terraform provider"
			visibility = "public"
			is_template =false
			has_issues= true
			has_wiki= true
			has_projects= false
			has_downloads= false
			allow_merge_commit= true
			allow_squash_merge= true
			allow_rebase_merge= true
			auto_init= true
			delete_branch_on_merge = true
  			topics = ["go", "terraform", "provider", "hackerspace", "client"]
		}
		"repo_ingredient" = {
			name        = "ingredient"
			description = "repository for ingredient project"
			visibility = "private"
			is_template =true
			has_issues= true
			has_wiki= true
			has_projects= false
			has_downloads= false
			allow_merge_commit= true
			allow_squash_merge= true
			allow_rebase_merge= true
			auto_init= true
			delete_branch_on_merge = true
  			topics = ["infrastructure", "terraform", "wrapper"]
		}
		"repo_mcpHCPTerraform" = {
			name        = "mcpHCPTerraform"
			description = "repository for mcp HCP terraform"
			visibility = "public"
			is_template =false
			template ={
				owner = "0xHackerSpace"
				repository = "mcpTemplate"
			}
			has_issues= true
			has_wiki= true
			has_projects= false
			has_downloads= false
			allow_merge_commit= true
			allow_squash_merge= true
			allow_rebase_merge= true
			auto_init= true
			delete_branch_on_merge = true
  			topics = ["python", "mcp","gen-ai", "template"]
		}
		"repo_mcpTemplate" = {
			name        = "mcpTemplate"
			description = "repository for mcp template"
			visibility = "public"
			is_template =true
			has_issues= true
			has_wiki= true
			has_projects= false
			has_downloads= false
			allow_merge_commit= true
			allow_squash_merge= true
			allow_rebase_merge= true
			auto_init= true
			delete_branch_on_merge = true
  			topics = ["python", "mcp","gen-ai", "template"]
		}
		"repo_myOwnBackstage" = {
			name        = "MyOwnBackstage"
			description = "repository for MyOwnBackstage project, a centralized repo for backstage plugins, templates, and configurations"
			visibility = "private"
			is_template =false
			has_issues= true
			has_wiki= true
			has_projects= false
			has_downloads= false
			allow_merge_commit= true
			allow_squash_merge= true
			allow_rebase_merge= true
			auto_init= true
			delete_branch_on_merge = true
  			topics                 = ["idp", "backstage"]
		}
		"repo_myracle" = {
			name        = "myracle"
			description = "repository for myracle project, a centralized repo for ai (models,prompts, rags,mcps, etc.)"
			visibility = "private"
			is_template =false
			has_issues= true
			has_wiki= true
			has_projects= false
			has_downloads= false
			allow_merge_commit= true
			allow_squash_merge= true
			allow_rebase_merge= true
			auto_init= true
			has_projects  = false
			delete_branch_on_merge = true
  			topics = ["ai", "machine-learning", "data-science", "prompts", "rag", "mcp", "models"]
		}
		"repo_myTfProvider" = {
			name        = "myTfProvider"
			description = "repository for custom terraform provider development"
			visibility = "public"
			is_template =false
			has_issues= true
			has_wiki= true
			has_projects= false
			has_downloads= false
			allow_merge_commit= true
			allow_squash_merge= true
			allow_rebase_merge= true
			auto_init= true
			delete_branch_on_merge = true
  			topics = ["terraform", "custom-provider"]
		}
		"repo_opa" = {
			name        = "opa"
			description = "repository for policies related to Open Policy Agent"
			visibility = "public"
			is_template =true
			has_issues= true
			has_wiki= true
			has_projects= false
			has_downloads= false
			allow_merge_commit= true
			allow_squash_merge= true
			allow_rebase_merge= true
			auto_init= true
			delete_branch_on_merge = true
  			topics = ["open-policy-agent"]
		}
		"repo_squadAgents" = {
			name        = "squadAgents"
			description = "repository for squad agents development"
			visibility = "public"
			is_template =false
			has_issues= true
			has_wiki= true
			has_projects= false
			has_downloads= false
			allow_merge_commit= true
			allow_squash_merge= true
			allow_rebase_merge= true
			auto_init= true
			delete_branch_on_merge = true
  			topics = ["squad-agents", "agents","genai"]
		}
		"repo_terraform_module_no_code" = {
			name        = "terraform-module-no-code"
			description = "This repository contains a Terraform module that does not contain any code. It is used to demonstrate how to create a Terraform module without any code in it."
			visibility = "private"
			is_template =false
			has_issues= true
			has_wiki= true
			has_projects= false
			has_downloads= false
			allow_merge_commit= true
			allow_squash_merge= true
			allow_rebase_merge= true
			auto_init= true
			delete_branch_on_merge = true
  			topics = [
				"terraform",
				"module",
				"no-code"
			]
		}
		"repo_terraformGithubRepo" = {
			name        = "terraformGithubRepo"
			description = "repository for terraform github repo module "
			visibility = "public"
			is_template =false
			has_issues= true
			has_wiki= true
			has_projects= false
			has_downloads= false
			allow_merge_commit= true
			allow_squash_merge= true
			allow_rebase_merge= true
			auto_init= true
			delete_branch_on_merge = true
  			topics = ["terraform", "module", "github"]
		}
		"repo_wrapper" = {
			name        = "wrapper"
			description = "Wrapper repository for managing infrastructure"
			visibility = "public"
			is_template =false
			has_issues= true
			has_wiki= true
			has_projects= false
			has_downloads= false
			allow_merge_commit= true
			allow_squash_merge= true
			allow_rebase_merge= true
			auto_init= true
			delete_branch_on_merge = true
  			topics = ["infrastructure", "terraform", "wrapper"]
		}
	}

	projects = {
		"config" = {
			name        = "config"
			variable_set ={
				github_app={
					name = "github_app"
					description = "github app configuration"
					variables = {
						GITHUB_ORGANIZATION = {
							key = "GITHUB_ORGANIZATION"
							value = var.GITHUB_ORGANIZATION
							description = "github organization name"
							category = "env"
						}
						GH_APP_ID = {
							key = "GH_APP_ID"
							value = var.GH_APP_ID
							description = "github app id"
							category = "env"
						}
						GH_APP_INSTALLATION_ORGANIZATION_ID = {
							key = "GH_APP_INSTALLATION_ORGANIZATION_ID"
							value = var.GH_APP_INSTALLATION_ORGANIZATION_ID
							description = "github app installation organization id"
							category = "env"
						}
						GH_APP_PRIVATE_KEY = {
							key = "GH_APP_PRIVATE_KEY"
							value_wo = var.GH_APP_PRIVATE_KEY_NO_NEW_LINES
							value_wo_version = 1
							description = "github app private key"
							category = "env"
							sensitive = true
						}

					}
				}
				tfe={
					name = "tfe"
					description = "tfe configuration"
					variables = {
						tfe_token = {
							key = "TFE_TOKEN"
							value_wo = var.TF_TOKEN_APP_TERRAFORM_IO
							value_wo_version = 1
							sensitive = true
							description = "tfe token for terraform cloud"
							category = "env"
						}
					}
				}
			}
		}
	}

}