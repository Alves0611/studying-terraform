output "buckets" {
  value = {
    virginia  = aws_s3_bucket.this.id
    sao_paulo = aws_s3_bucket.this_sp.id
  }
}
