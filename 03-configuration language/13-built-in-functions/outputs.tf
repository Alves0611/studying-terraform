output "locals" {
  value = {
    string = {
      replace = local.replace
      substr  = local.substr
      length  = local.length
      regex   = local.regex
    }
    collection = {
      contains = local.contains
      element  = local.element
      index    = local.index
      keys     = local.keys
      lookup   = local.lookup
    }
    encoding = {
      jsonencode   = local.jsonencode
      base64encode = local.base64encode
      template     = local.template
    }
    type = {
      can = local.can
      try = local.try
    }
  }
}
