
data "tfe_organization" "HackerSpace" {
  name = "0xHackerSpace"
}



module "tfe-projects" {
    source = "./modules/tfe-project"

    for_each = local.projects

    organization_name = data.tfe_organization.HackerSpace.name

    project_name = each.value.name

    project_variable_set = each.value.variable_set


  
}