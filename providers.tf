# Set required providers and versions
terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 4.0"
    }
  }
}

# Configure Providers
provider "github" {
  owner = var.repository_owner
}
