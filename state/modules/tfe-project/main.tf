
resource "tfe_project" "this" {
  organization = var.organization_name
  name = var.project_name
}

resource "tfe_variable_set" "this" {
  for_each = var.project_variable_set

  name              = each.value.name
  description       = each.value.description
  organization      = var.organization_name
  parent_project_id = tfe_project.this.id

  depends_on = [tfe_project.this]
}


resource "tfe_variable" "this" {
  for_each = local.variables


  key             = each.value.key
  value           = try(each.value.value, null)
  value_wo        = try(each.value.value_wo, null)
  value_wo_version= try(each.value.value_wo_version, null)
  category        = each.value.category
  description     = each.value.description
  sensitive       = each.value.sensitive


  variable_set_id = tfe_variable_set.this[
    each.value.variable_set_key
  ].id
}

