resource "aws_s3_bucket" "this" {
  bucket = "${data.aws_caller_identity.this.account_id}-${random_pet.this.id}"
}
