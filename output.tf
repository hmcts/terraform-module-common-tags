output "common_tags" {
  description = "Returns a mapping of tags to assign."
  value = {
    for k, v in local.all_tags : k => v
    if v != false && v != ""
  }
}
