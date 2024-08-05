output "pets" {
  value = var.create_random_pets ? random_pet.for_each : null
}
