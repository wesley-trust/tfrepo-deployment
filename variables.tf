# Variables
variable "resource_repository" {
  description = "The repositories to deploy"
  type        = map(any)
  default = {
    root = [
      "tfroot-test"
    ]

    module = [
      "tfmodule-test"
    ]

    submodule = [
      ""
    ]
  }
}

variable "repository_description" {
  description = "The repository description"
  type        = map(any)
  default = {
    "tfroot-test"   = "Test root description"
    "tfmodule-test" = "Test module description"
  }
}

variable "repository_visibility" {
  description = "The visibility of the repository"
  type        = map(any)
  default = {
    "tfroot-test"   = "public"
    "tfmodule-test" = "public"
  }
}

variable "repository_template_owner" {
  description = "The licence template owner"
  type        = string
  default     = "wesley-trust"
}

variable "repository_branch_protection" {
  description = "The repository branch to protect"
  type        = string
  default     = "main"
}

variable "repository_template" {
  description = "The template for the repository"
  type        = map(any)
  default = {
    root      = "tfroot-template"
    module    = "tfmodule-template"
    submodule = "tfmodule-template"
  }
}

variable "license_template" {
  description = "The licence template for the repo"
  type        = string
  default     = "mit"
}
