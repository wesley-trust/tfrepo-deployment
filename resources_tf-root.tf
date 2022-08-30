# Define resources
resource "github_repository" "tf-root" {
  for_each    = toset(var.resource_repository.tf-root)
  name        = "${each.value}${local.service_deployment}"
  description = var.repository_description[each.value]

  visibility       = var.repository_visibility[each.value]
  license_template = var.license_template
  topics           = var.repository_topics.tf-root

  allow_auto_merge       = true
  delete_branch_on_merge = true
  vulnerability_alerts   = true
  is_template            = true

  template {
    owner      = var.repository_owner
    repository = var.repository_template.tf-root
  }
}

resource "github_branch_protection" "tf-root" {
  for_each      = toset(var.resource_repository.tf-root)
  repository_id = github_repository.tf-root[each.value].node_id

  pattern = var.repository_branch_protection

  enforce_admins      = true
  allows_deletions    = false
  allows_force_pushes = false

  required_status_checks {
    strict = true
  }

  required_pull_request_reviews {
    dismiss_stale_reviews           = true
    required_approving_review_count = 0
  }
}
