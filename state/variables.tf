# GitHub App

variable "GH_APP_ID" {
  description = "GitHub App ID"
  type        = string
}

variable "GH_APP_PRIVATE_KEY" {
  description = "GitHub App ID"
  type        = string
}

variable "GH_APP_PRIVATE_KEY_PATH" {
  description = "GitHub App ID"
  type        = string
}

variable "GH_APP_INSTALLATION_ORGANIZATION_ID" {
  description = "GitHub App Installation ID"
  type        = string
}

variable "GITHUB_ORGANIZATION" {
  description = "GitHub organization name"
  type        = string
}
variable "TF_TOKEN_APP_TERRAFORM_IO" {
  description = "HCP Terraform token for app.terraform.io"
  type        = string
}
variable "MAIN_DOMAIN" {
  description = "Main domain for the organization"
  type        = string
}
