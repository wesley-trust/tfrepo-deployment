# Define resources
resource "github_repository" "test" {
  name        = "tfroot-test"
  description = "test"

  visibility = "public"

  template {
    owner      = "wesley-trust"
    repository = "tfroot-template"
  }
}