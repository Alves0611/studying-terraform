resource "random_pet" "count" {
  count  = var.create_random_pets ? 4 : 0
  length = 3
  prefix = count.index
}
