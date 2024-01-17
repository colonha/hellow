resource "google_project_service" "service" {
  for_each = toset([
    # To create networking components for static IP and load balancer
    "identitytoolkit.googleapis.com",
    "dns.googleapis.com",
    "sql-component.googleapis.com",
    "sqladmin.googleapis.com",
    "storage.googleapis.com",

  ])

  service = each.key

  project            = var.project_id
  disable_on_destroy = false
}