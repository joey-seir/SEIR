output "vm_name" {
  description = "TBD"
  value       = google_compute_instance.my-vm.name
}

output "vm_id" {
  description = "TBD"
  value       = google_compute_instance.my-vm.id
}

output "vm_self_link" {
  description = "TBD"
  value       = google_compute_instance.my-vm.self_link
}

output "internal_ip" {
  description = "TBD."
  value       = google_compute_instance.my-vm.network_interface[0].network_ip
}

output "external_ip" {
  description = "TBD"
  value       = google_compute_instance.my-vm.network_interface[0].access_config[0].nat_ip
}