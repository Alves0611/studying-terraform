resource "random_pet" "for_each" {
  for_each = var.create_random_pets ? {
    dog  = 4
    cat  = 2
    bird = 3
    pig  = 5
  } : {}
  length = each.value
  prefix = each.key
}
