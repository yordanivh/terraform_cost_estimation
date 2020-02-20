provider "google" {
  project = "Support Engineering Europe"
  region  = "us-central1"
  zone    = "us-central1-c"
}

resource "google_compute_instance" "metabase" {
  name         = module.metabase_gce_label.name
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
