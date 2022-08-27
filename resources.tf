# Define resources
resource "github_repository" "test" {
  name        = "tfroot-test"
  description = "test"

  visibility             = "public"
  delete_branch_on_merge = true
  license_template       = "mit"
  vulnerability_alerts   = true
  is_template            = true

  template {
    owner      = "wesley-trust"
    repository = "tfroot-template"
  }
}

resource "github_branch_protection" "test" {
  repository_id = github_repository.test.node_id

  pattern             = "main"
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
