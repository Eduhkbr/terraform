# Cria uma VM no Google Cloud
resource "google_compute_instance" "firstvm" {
	name = "helloworld"
	machine_type = "n1-standard-1"
	zone = "us-central1-c"

	# Defini a Imagem da VM
	boot_disk {
	  initialize_params {
	    image = "ubuntu-minimal-2004-focal-v20210910"
	  }
	}

	# Habilita rede para a VM com um IP publico
	network_interface {
	  network = "default" 
	  # Estamos usando a VPC default
	  
	  access_config {
	  }
	  #a presença do bloco access_config garante que a instância estará acessivel pela internet mesmo que vazia
	}
}

resource "google_app_engine_application" "app"
	project = "erp-test-202020"
	location_id = "us-central"
}
