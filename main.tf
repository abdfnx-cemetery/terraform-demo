terraform {
    required_providers {
        google = {
            source = "hashicorp/google"
            version = "3.5.0"
        }
    }
}

provider "google" {
    credentials = "<NAME>.json"

    project = "<PROJECT_ID>"
    region = "us-central1"
    zone = "us-central1-a"   
}

resource "google_compute_instance" "default" {
    name = "abdfn is abdfn"
    machine_type = "e2-medium"
    zone = "us-central1-a"

    boot_disk {
        initialize_params {
            image = "debian-cloud/debian-9"
        }
    }

    network_interface {
        network = "default"
        access_configs {}
    }
}
