resource "google_compute_instance" "my-vm" {
  name         = "my-vm"
  machine_type = "n2-standard-2" 
  zone         = var.zone
  tags = ["http-server"]

  boot_disk {
    initialize_params {
      image = "centos-cloud/centos-stream-10"
      size  = 100 
      type  = "pd-balanced"
    }
  }

  network_interface {
    network = "default"
    access_config {}
  }

  metadata_startup_script = file("${path.module}/startup.sh")
}