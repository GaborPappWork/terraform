resource "google_compute_instance" "www" {
  name         			= "test"
  machine_type 	= "n1-standard-1"
  zone         			= "europe-west1-b"
  tags = ["www-node"]
  
  disk {
    image = "centos-7-v20170426"
  }

 network_interface {
     network = "default"
     access_config {
      # Ephemeral
     }
  }

 metadata_startup_script = <<SCRIPT
 sudo yum install -y httpd && sudo service httpd start
 SCRIPT


}
 resource "google_compute_firewall" "www" {
  name    = "tf-www-firewall"
  network = "default"

  allow {
    protocol = "tcp"
    ports    = ["80"]
  }
   allow {
    protocol = "tcp"
    ports    = ["8080"]
  }

  source_ranges = ["0.0.0.0/0"]
  target_tags   = ["www-node"]
 } 



