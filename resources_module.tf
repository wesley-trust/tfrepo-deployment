# Define resources
/* resource "github_repository" "module" {
  for_each    = toset(var.resource_repository.module)
  name        = each.value
  description = var.repository_description[each.value]

  visibility       = var.repository_visibility[each.value]
  license_template = var.license_template
  topics           = var.repository_topics.module

  delete_branch_on_merge = true
  vulnerability_alerts   = true

  template {
    owner      = var.repository_template_owner
    repository = var.repository_template.module
  }
}

resource "github_branch_protection" "module" {
  for_each      = toset(var.resource_repository.module)
  repository_id = github_repository.module[each.value].node_id

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
 */