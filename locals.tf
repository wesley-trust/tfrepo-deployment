# Calculate local variables
locals {
  service_deployment = var.service_deployment != null ? "-${var.service_deployment}" : null
}
