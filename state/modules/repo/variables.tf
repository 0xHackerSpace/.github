variable "visibility" {
  description = "The visibility of the repository. Can be 'public' or 'private'"
  type        = string
  default     = "public"
}

variable "has_issues" {
  description = "Set to true to enable the GitHub Issues features on the repository"
  type        = bool
  default     = true
}

variable "has_wiki" {
  description = "Set to true to enable the GitHub Wiki features on the repository"
  type        = bool
  default     = true
}

variable "has_projects" {
  description = "Set to true to enable the GitHub Projects features on the repository"
  type        = bool
  default     = true
}

variable "has_downloads" {
  description = "Set to true to enable the (deprecated) downloads features on the repository"
  type        = bool
  default     = false
}

variable "allow_merge_commit" {
  description = "Set to true to enable merge commits on the repository"
  type        = bool
  default     = true
}

variable "allow_squash_merge" {
  description = "Set to true to enable squash merging on the repository"
  type        = bool
  default     = true
}

variable "allow_rebase_merge" {
  description = "Set to true to enable rebase merging on the repository"
  type        = bool
  default     = true
}

variable "auto_init" {
  description = "Set to true to produce an initial commit in the repository"
  type        = bool
  default     = true
}

variable "delete_branch_on_merge" {
  description = "Automatically delete head branch after a pull request is merged"
  type        = bool
  default     = true
}

variable "topics" {
  description = "The list of topics of the repository"
  type        = list(string)
  default     = []
}

variable "name" {
  description = "The name of the repository"
  type        = string
  default     = "myracle"
  
}
variable "description" {
  description = "The description of the repository"
  type        = string
  default     = "repository for myracle project, a centralized repo for ai (models,prompts, rags,mcps, etc.)"
}