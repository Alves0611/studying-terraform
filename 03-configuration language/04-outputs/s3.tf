resource "aws_s3_bucket" "random" {
  bucket = random_pet.bucket.id
}
