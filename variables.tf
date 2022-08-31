# Variables
variable "resource_repository" {
  description = "The repositories to deploy"
  type        = map(any)
  default = {
    repo = [
      "pkr-directory_services",
    ]
    tf-root = [
      "tfroot-directory_services",
      "tfroot-edge_services",
      "tfroot-file_services",
      "tfroot-management_services",
      "tfpipeline-deployment",
    ]

    tf-module = [
      "tfmodule-resource_group",
      "tfmodule-compute",
      "tfmodule-network_peering",
      "tfmodule-recovery_services",
      "tfmodule-static_site",
      "tfmodule-storage_sync",
      "tfmodule-traffic_manager"
    ]

    tf-submodule = [
      "tfsubmodule-network",
      "tfsubmodule-disks",
      "tfsubmodule-key_vault",
      "tfsubmodule-network_interfaces",
      "tfsubmodule-public_load_balancer",
      "tfsubmodule-virtual_machine"
    ]
  }
}

variable "repository_description" {
  description = "The repository description"
  type        = map(any)
  default = {
    "pkr-directory_services"           = "Testing packer"
    "tfroot-directory_services"        = "Terraform root configuration for deploying Directory Services to Azure, using modules, with Terratest Unit/Integration testing via Go, Regula (OPA) Policy as Code scanning in an Azure DevOps Pipeline"
    "tfroot-edge_services"             = "Terraform root configuration for deploying Edge Services to Azure, using modules, with Terratest Unit/Integration testing via Go, Regula (OPA) Policy as Code scanning in an Azure DevOps Pipeline"
    "tfroot-file_services"             = "Terraform root configuration for deploying File Services to Azure, using modules, with Terratest Unit/Integration testing via Go, Regula (OPA) Policy as Code scanning in an Azure DevOps Pipeline"
    "tfroot-management_services"       = "Terraform root configuration for deploying Management Services to Azure, using modules, with Terratest Unit/Integration testing via Go, Regula (OPA) Policy as Code scanning in an Azure DevOps Pipeline"
    "tfpipeline-deployment"            = "Terraform root configuration for deploying Pipelines to Azure DevOps, with Terratest Unit/Integration testing via Go and Regula (OPA) Policy as Code scanning in an Azure DevOps Pipeline"
    "tfmodule-resource_group"          = "Terraform module for deploying Resource Groups to Azure, with Terratest Unit/Integration testing via Go, and Regula (OPA) Policy as Code scanning in an Azure DevOps Pipeline"
    "tfmodule-compute"                 = "Terraform module for deploying VMs to Azure, with features enabled via submodules, Terratest Unit/Integration testing via Go, and Regula (OPA) Policy as Code scanning in an Azure DevOps Pipeline"
    "tfmodule-network_peering"         = "Terraform module for deploying network peering (Local/Global) in Azure, with Terratest Unit/Integration testing via Go, and Regula (OPA) Policy as Code scanning in an Azure DevOps Pipeline"
    "tfmodule-recovery_services"       = "Terraform module for deploying Recovery Services to Azure, with Terratest Unit/Integration testing via Go, and Regula (OPA) Policy as Code scanning in an Azure DevOps Pipeline"
    "tfmodule-static_site"             = "Terraform module for deploying Static Sites to Azure, with features enabled via submodules, Terratest Unit/Integration testing via Go, and Regula (OPA) Policy as Code scanning in an Azure DevOps Pipeline"
    "tfmodule-storage_sync"            = "Terraform module for deploying Storage Sync to Azure, with features enabled via submodules, Terratest Unit/Integration testing via Go, and Regula (OPA) Policy as Code scanning in an Azure DevOps Pipeline"
    "tfmodule-traffic_manager"         = "Terraform module for deploying Traffic Manager to Azure, with Terratest Unit/Integration testing via Go, and Regula (OPA) Policy as Code scanning in an Azure DevOps Pipeline"
    "tfsubmodule-network"              = "Terraform submodule, to create Virtual Networks, Subnets, RTs & NSGs in Azure, with Terratest Unit/Integration testing via Go and Regula (OPA) Policy as Code scanning in an Azure DevOps Pipeline"
    "tfsubmodule-disks"                = "Terraform submodule for deploying disks and attaching to VMs in Azure, with Terratest Unit/Integration testing via Go, and Regula (OPA) Policy as Code scanning in an Azure DevOps Pipeline"
    "tfsubmodule-key_vault"            = "Terraform submodule for deploying Key Vault to Azure, with Terratest Unit/Integration testing via Go, and Regula (OPA) Policy as Code scanning in an Azure DevOps Pipeline"
    "tfsubmodule-network_interfaces"   = "Terraform submodule for network interfaces in Azure, with Terratest Unit/Integration testing via Go, and Regula (OPA) Policy as Code scanning in an Azure DevOps Pipeline"
    "tfsubmodule-public_load_balancer" = "Terraform submodule for deploying public load balancers to Azure, with Terratest Unit/Integration testing via Go, and Regula (OPA) Policy as Code scanning in an Azure DevOps Pipeline"
    "tfsubmodule-virtual_machine"      = "Terraform submodule for deploying Linux or Windows VMs to Azure, with Terratest Unit/Integration testing via Go, and Regula (OPA) Policy as Code scanning in an Azure DevOps Pipeline"
  }
}

variable "repository_visibility" {
  description = "The visibility of the repository"
  type        = map(any)
  default = {
    "pkr-directory_services"           = "public"
    "tfroot-directory_services"        = "public"
    "tfroot-edge_services"             = "public"
    "tfroot-file_services"             = "public"
    "tfroot-management_services"       = "public"
    "tfpipeline-deployment"            = "public"
    "tfmodule-resource_group"          = "public"
    "tfmodule-compute"                 = "public"
    "tfmodule-network_peering"         = "public"
    "tfmodule-recovery_services"       = "public"
    "tfmodule-static_site"             = "public"
    "tfmodule-storage_sync"            = "public"
    "tfmodule-traffic_manager"         = "public"
    "tfsubmodule-network"              = "public"
    "tfsubmodule-disks"                = "public"
    "tfsubmodule-key_vault"            = "public"
    "tfsubmodule-network_interfaces"   = "public"
    "tfsubmodule-public_load_balancer" = "public"
    "tfsubmodule-virtual_machine"      = "public"
  }
}

variable "repository_topics" {
  description = "The topics of the repository"
  type        = map(any)
  default = {
    "repo"         = []
    "tf-root"      = ["azure", "terraform", "terratest", "azure-devops"]
    "tf-module"    = ["azure", "terraform", "terratest", "azure-devops", "terraform-module"]
    "tf-submodule" = ["azure", "terraform", "terratest", "azure-devops", "terraform-module"]
  }
}

variable "repository_owner" {
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
    tf-root      = "tfroot-template"
    tf-module    = "tfmodule-template"
    tf-submodule = "tfmodule-template"
  }
}

variable "license_template" {
  description = "The licence template for the repo"
  type        = string
  default     = "mit"
}

variable "service_deployment" {
  description = "The service deployment to create a unique repo name for testing"
  type        = string
  default     = null
}
