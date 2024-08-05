resource "random_pet" "count" {
  count  = 4
  length = 3
  prefix = count.index
}
