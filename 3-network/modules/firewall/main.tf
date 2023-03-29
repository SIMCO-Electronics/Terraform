resource "google_compute_firewall" "allow_ingress_iap" {
  name      = "fw-${var.environment_code}-${var.app_name}-iap-1000"
  network   = var.network_name
  project   = var.project_id
  direction = "INGRESS"
  priority  = 1000

  allow {
    protocol = "tcp"
    ports    = ["22", "3389"]
  }

  source_ranges = ["35.235.240.0/20"]
}

resource "google_compute_firewall" "allow_ingress_lb_hc" {
  name      = "fw-${var.environment_code}-${var.app_name}-lb-hc-1000"
  network   = var.network_name
  project   = var.project_id
  direction = "INGRESS"
  priority  = 1000

  allow {
    protocol = "tcp"
    ports    = ["80", "443"]
  }

  source_ranges = ["35.191.0.0/16", "130.211.0.0/22", "209.85.152.0/22", "209.85.204.0/22"]
}