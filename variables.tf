# Variables
variable "resource_repository" {
  description = "The repositories to deploy"
  type        = map(any)
  default = {
    root = [
      "tfroot-directory_services",
      "tfroot-edge_services",
      "tfroot-file_services",
      "tfroot-management_services",
    ]

    module = [
      ""
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
    "tfroot-directory_services"  = "Terraform root configuration for deploying Directory Services to Azure, using modules, with Terratest Unit/Integration testing via Go, Regula (OPA) Policy as Code scanning in an Azure DevOps Pipeline"
    "tfroot-edge_services"       = "Terraform root configuration for deploying Edge Services to Azure, using modules, with Terratest Unit/Integration testing via Go, Regula (OPA) Policy as Code scanning in an Azure DevOps Pipeline"
    "tfroot-file_services"       = "Terraform root configuration for deploying File Services to Azure, using modules, with Terratest Unit/Integration testing via Go, Regula (OPA) Policy as Code scanning in an Azure DevOps Pipeline"
    "tfroot-management_services" = "Terraform root configuration for deploying Management Services to Azure, using modules, with Terratest Unit/Integration testing via Go, Regula (OPA) Policy as Code scanning in an Azure DevOps Pipeline"
  }
}

variable "repository_visibility" {
  description = "The visibility of the repository"
  type        = map(any)
  default = {
    "tfroot-directory_services"  = "public"
    "tfroot-edge_services"       = "public"
    "tfroot-file_services"       = "public"
    "tfroot-management_services" = "public"
  }
}

variable "repository_topics" {
  description = "The topics of the repository"
  type        = map(any)
  default = {
    "root" = ["azure", "terraform", "terratest", "azuredevops"]
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
