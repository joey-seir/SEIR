terraform {
  required_providers {
    google = {
        source = "hashicorp/google"
        version = "~> 5.0"
    }
  }
}

provider "google" {
  project = "who-are-you-v1"
  region = "us-central1"
}

resource "google_compute_network" "simple-vpc" {
    name = "simple-vpc"
    auto_create_subnetworks = false
    description = "simple vpc for the lolz"
  
}

resource "local_file" "food_file" {
  filename = "food_file"
  content = "Tomhawk steak 🥩"
}

output "simple_vpc" {
  description = "What's my VPC name"
  value = google_compute_network.simple-vpc
}

