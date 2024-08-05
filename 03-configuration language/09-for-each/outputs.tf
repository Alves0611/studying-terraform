output "pets" {
  value = var.create_random_pets ? [
    random_pet.for_each["dog"].id,
    random_pet.for_each["cat"].id,
    random_pet.for_each["bird"].id,
    random_pet.for_each["pig"].id
  ] : null
}
