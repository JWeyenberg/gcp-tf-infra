terraform {
	backend "gcs" {
		bucket = "tf-state-jamey"
		prefix = "terraform/"
	}
}

resource "google_compute_network" "vpc_network" {
  name = "terraform-network"
  project = var.project_id
}