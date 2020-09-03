provider "google" {
    project = "terraform-project"
    name    = "terraform"
    region  = "us-central1"
    zone    = "us-central1-a"

resource "google_compute_instance" "vm_instance" {
    name = "terraform-instance"
    image = "ubuntu/ubuntu18.04"
    region = "us-central"
    type = "g6-standard-1"
    root_pass = "your-root-password"

    network_interface {
        network =  "default"
        access_config {
        }
    }

}
