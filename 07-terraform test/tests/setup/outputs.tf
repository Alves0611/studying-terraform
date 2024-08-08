output "bucket_name" {
  value = random_pet.service_name.id
}

output "table_name" {
  value = random_pet.service_name.id
}

output "read_capacity" {
  value = random_integer.read_capacity.result
}

output "write_capacity" {
  value = random_integer.write_capacity.result
}
