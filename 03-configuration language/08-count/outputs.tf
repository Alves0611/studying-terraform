output "pets" {
  value = [
    random_pet.count[0].id,
    random_pet.count[1].id,
    random_pet.count[2].id,
    random_pet.count[3].id
  ]
}
