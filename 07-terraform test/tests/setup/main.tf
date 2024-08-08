terraform {
  required_providers {
    random = {
      source  = "hashicorp/random"
      version = "3.5.1"
    }
  }
}

resource "random_pet" "service_name" {
  length = 6
}

resource "random_integer" "read_capacity" {
  min = 1
  max = 8
}

resource "random_integer" "write_capacity" {
  min = 1
  max = 8
}