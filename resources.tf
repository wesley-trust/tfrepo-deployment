# Define resources
resource "github_repository" "test" {
  name        = "test"
  description = "test"

  visibility = "public"

  template {
    owner      = "wesley-trust"
    repository = "tfroot-template"
  }
}