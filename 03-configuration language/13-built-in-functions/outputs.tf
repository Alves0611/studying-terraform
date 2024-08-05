output "locals" {
  value = {
    string = {
      replace = local.replace
      substr  = local.substr
      length  = local.length
      regex   = local.regex
    }
  }
}
