output "repository_name" {
  value = google_artifact_registry_repository.my_repository.name
}
output "cluster_name" {
  description = "Name of the GKE Autopilot cluster"
  value       = google_container_cluster.autopilot_cluster.name
}

output "cluster_endpoint" {
  description = "Endpoint of the GKE Autopilot cluster"
  value       = google_container_cluster.autopilot_cluster.endpoint
}

output "cluster_master_version" {
  description = "Master version of the GKE Autopilot cluster"
  value       = google_container_cluster.autopilot_cluster.master_version
}

output "cluster_location" {
  description = "Location of the GKE Autopilot cluster"
  value       = google_container_cluster.autopilot_cluster.location
}