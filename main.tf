variable "gcp_credentials" {}

provider "google" {
  
  credentials = var.gcp_credentials
  project     = "sup-eng-eu"
  region      = "europe-north1"
  zone        = "europe-north1-a"
}

provider "null" {}

resource "null_resource" "named" {
  }

resource "google_compute_instance" "metabase" {
  name         = "random-name-changed"
  machine_type = "n1-highmem-2"
  
  tags = ["foo", "bar"]
  
  metadata = {
    foo = "bar"
  }
  
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

resource "google_compute_instance" "metabase1" {
  name         = "random-name-changed1"
  machine_type = "n1-highmem-4"
  
  tags = ["foo", "bar"]
  
  metadata = {
    foo = "bar"
  }
  
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
