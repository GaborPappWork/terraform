provider "google" {
  credentials 	= "${file("gc-compute-service.json")}"
  project 		= "proven-wavelet-166607"
  region    		= "europe-west"
}