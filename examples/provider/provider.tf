

terraform {
  required_providers {
    infrahub = {
      source  = "marcomartinez.ch/marcom4rtinez/infrahub"
      version = "1.0"
    }
  }
}

provider "infrahub" {
  api_key         = "XXX"
  infrahub_server = "http://10.0.0.1:8000"
  branch          = "main"
}
