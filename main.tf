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
