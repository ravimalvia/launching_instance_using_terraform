terraform {
  required_providers {
    myawscloud = {
      source = "hashicorp/aws"
      version = "4.46.0"
    }
  }
}

provider "myawscloud" {
  region= "ap-south-1"
}