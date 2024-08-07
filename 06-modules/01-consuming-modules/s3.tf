module "logs" {
  source      = "./modules/s3"
  bucket_name = "module-${random_pet.this.id}-logs-bucket"
}

module "reports" {
  source      = "./modules/s3"
  bucket_name = "module-${random_pet.this.id}-reports-bucket"
}

module "s3_pictures" {
  source  = "terraform-aws-modules/s3-bucket/aws"
  version = "3.15.1"
}


resource "random_pet" "this" {
  length = 3
}
