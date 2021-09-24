terraform {
	required_providers {
	  google = {
		source = "hashicorp/google"
		version = "3.64.0"
	  }
	}
}

# Configura o Provider Google Cloud com o Projeto provider "google"
provider "google" {

	project = "erp-test-202020"
	region = "us-central1"
	zone = "us-central1-c"
}
