# Define resources
resource "github_repository" "root" {
  for_each    = toset(var.resource_repository.root)
  name        = each.value
  description = var.repository_description[each.value]

  visibility       = var.repository_visibility[each.value]
  license_template = var.license_template
  topics           = var.repository_topics.root

  delete_branch_on_merge = true
  vulnerability_alerts   = true
  is_template            = true

  template {
    owner      = var.repository_template_owner
    repository = var.repository_template.root
  }
}

resource "github_branch_protection" "root" {
  for_each      = toset(var.resource_repository.root)
  repository_id = github_repository.root[each.value].node_id

  pattern = var.repository_branch_protection

  enforce_admins      = true
  allows_deletions    = false
  allows_force_pushes = false

  required_status_checks {
    strict = true
  }

  required_pull_request_reviews {
    dismiss_stale_reviews           = true
    restrict_dismissals             = true
    required_approving_review_count = 0
  }
}
