# Specify terraform version
terraform {
  required_version = ">= 1.0.3"
}

# Main reference of all historical resource moves
moved {

  # Rename of repository
  from = github_repository.root["tfrepo-test"]
  to   = github_repository.root["tfroot-test"]
}
