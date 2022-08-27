# Specify terraform version
terraform {
  required_version = ">= 1.0.3"
}

# Main reference of all historical resource moves
moved {

  # Rename of repository
  from = github_branch_protection.root["tfrepo-test"]
  to   = github_branch_protection.root["tfroot-test"]
}
