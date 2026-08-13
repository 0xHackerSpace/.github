locals {
  variables = merge([
    for variable_set_key, variable_set in var.project_variable_set : {
      for variable_key, variable_value in variable_set.variables : "${variable_set_key}.${variable_key}" => {
        variable_set_key = variable_set_key

        key         = variable_value.key
        value       = try(variable_value.value, null)
        value_wo    = try(variable_value.value_wo, null)
        value_wo_version    = try(variable_value.value_wo_version, null)

        category    = variable_value.category
        description = variable_value.description
        sensitive   = variable_value.sensitive

      }
    }
  ]...)


}
