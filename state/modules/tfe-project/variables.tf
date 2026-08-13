
variable "organization_name" {
  description = "The name of the TFE organization."
  type        = string
}
variable "project_name" {
  description = "The name of the TFE project."
  type        = string
}


variable "project_variable_set" {
  description = "The name of the TFE project variable set."
  type = map(object({
    name        = string
    description = string
    variables = map(object({
      key         = string
      value       = optional(string)
      value_wo    = optional(string)
      value_wo_version = optional(number)
      category    = string
      description = string
      sensitive   = optional(bool, false)
    }))
  }))
}
