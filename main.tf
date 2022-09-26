# Specify terraform version
terraform {
  required_version = ">= 1.0.3"
}

# Main reference of resource moves
/* moved {
  from = github_repository.repo
  to   = github_repository.pkr
}
moved {
  from = github_branch_protection.repo
  to   = github_branch_protection.pkr
} */
moved {
  from = github_repository.root
  to   = github_repository.tf-root
}
moved {
  from = github_repository.module
  to   = github_repository.tf-module
}
moved {
  from = github_repository.submodule
  to   = github_repository.tf-submodule
}
moved {
  from = github_branch_protection.root
  to   = github_branch_protection.tf-root
}
moved {
  from = github_branch_protection.module
  to   = github_branch_protection.tf-module
}
moved {
  from = github_branch_protection.submodule
  to   = github_branch_protection.tf-submodule
}
