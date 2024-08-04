output "locals" {
  value = {
    literal_string    = local.literal_string
    concatened_string = local.concatened_string
    function_string   = local.function_string

    heredoc_string          = local.heredoc_string
    indented_heredoc_string = local.indented_heredoc_string

    json         = local.json
    decoded_json = local.decoded_json["foo"]
  }
}
