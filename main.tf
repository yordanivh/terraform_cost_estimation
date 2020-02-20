variable "gcp_credentials" {}

provider "google" {
  
  credentials = var.gcp_credentials
  region      = "europe-north1"
  zone        = "europe-north1-a"
}

resource "google_compute_instance" "metabase" {
  name         = "random-name"
  machine_type = "n1-standard-1"
  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }
  network_interface {
    network = "default"
    access_config {
    }
  }
}
