locals {
  bucket_name = "caso-o-bucket-tenha-um-nome-muito-grande-sera-preciso-limitar-para-nao-causar-um-erro-ao-aplicar-o-terraform"
  foo         = { bar = "baz" }

  # String 
  replace = lower(replace("Uma String Com Espaços", " ", "-"))
  substr  = substr(local.bucket_name, 0, 63)
  length  = length(local.bucket_name)
  regex   = regex("[a-z]+", "1123123123.4341321adfasdfad13123")
}
