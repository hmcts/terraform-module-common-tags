/**
 * # Terraform module to reference common tags
 *
 * ## Tagging policy documentation
 *
 * https://tools.hmcts.net/confluence/display/DCO/Tagging+v0.4
 *
 *
 */

locals {
  common_tags = {
    application  = yamldecode(file("${path.module}/team-config.yml"))[var.product]["tags"]["application"]
    businessArea = yamldecode(file("${path.module}/team-config.yml"))[var.product]["tags"]["businessArea"]
    builtFrom    = var.builtFrom
    criticality  = local.criticality[var.environment]
    environment  = [for x in keys(local.env_mapping) : x if contains(local.env_mapping[x], var.environment)][0]
  }

  criticality = {
    sbox      = "Low"
    aat       = "High"
    stg       = "High"
    prod      = "High"
    ithc      = "Medium"
    test      = "Medium"
    perftest  = "Medium"
    demo      = "Medium"
    dev       = "Low"
    ptl       = "High"
    preview   = "Low"
    ldata     = "High"
    sandbox   = "Low"
    nle       = "High"
    nonprod   = "Medium"
    ptlsbox   = "Low"
    sbox-init = "Low"
  }

  env_mapping = {
    production  = ["ptl", "prod"]
    development = ["dev", "preview"]
    staging     = ["ldata", "stg", "aat", "nle", "nonprod"]
    testing     = ["test", "perftest"]
    sandbox     = ["sandbox", "sbox", "ptlsbox", "sbox-int"]
    demo        = ["demo"]
    ithc        = ["ithc"]

  }

}
