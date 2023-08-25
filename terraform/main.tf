provider "google" {
  credentials = file("../credentials.json")
  project     = var.project_id
  region      = var.region
}
 
#Creating gke cluster
resource "google_container_cluster" "ac-cluster" {
  name     = "ac-cluster"
  location = var.region
 
  network    = google_compute_network.vpc.name
  subnetwork = google_compute_subnetwork.subnet.name

  enable_autopilot = true
}
#Creating AR for docker images
resource "google_artifact_registry_repository" "ac_repository" {
  location      = var.region
  format        = "DOCKER"
}
#Creating app repo in gcp
resource "google_sourcerepo_repository" "ac-pipeline-app" {
  name = "ac-repo-1"
}
#Creating env repo in gcp
resource "google_sourcerepo_repository" "ac-pipeline-env" {
  name = "ac-repo-2"
}