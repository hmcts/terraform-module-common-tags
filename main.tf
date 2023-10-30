

locals {
  common_tags = {
    application  = yamldecode(file("${path.module}/team-config.yml"))[var.product]["tags"]["application"]
    businessArea = yamldecode(file("${path.module}/team-config.yml"))[var.product]["tags"]["businessArea"]
    builtFrom    = var.builtFrom
    criticality  = local.criticality[var.environment]
    environment  = [for x in keys(local.env_mapping) : x if contains(local.env_mapping[x], var.environment)][0]
  }

  additional_tags = {
    autoShutdown = var.autoShutdown
  }

  expiresAfter = var.expiresAfter == "0000-00-00" ? formatdate("YYYY-MM-DD", timeadd(timestamp(), "720h")) : var.expiresAfter
  all_tags = local.common_tags.environment == "sandbox" ? merge(local.common_tags, local.additional_tags, tomap({"expiresAfter" = local.expiresAfter})) : merge(local.common_tags, local.additional_tags)
  
  criticality = {
    sbox     = "Low"
    aat      = "High"
    stg      = "High"
    prod     = "High"
    prod-int = "High"
    ithc     = "Medium"
    test     = "Medium"
    perftest = "Medium"
    demo     = "Medium"
    dev      = "Low"
    ptl      = "High"
    preview  = "Low"
    ldata    = "High"
    sandbox  = "Low"
    nle      = "High"
    nonprod  = "Medium"
    nonprodi = "Medium"
    ptlsbox  = "Low"
    sbox-int = "Low"
    mgmt     = "High"
  }

  env_mapping = {
    production  = ["ptl", "prod", "prod-int", "mgmt", "management"]
    development = ["dev", "preview"]
    staging     = ["ldata", "stg", "aat", "nle", "nonprod", "nonprodi"]
    testing     = ["test", "perftest"]
    sandbox     = ["sandbox", "sbox", "ptlsbox", "sbox-int"]
    demo        = ["demo"]
    ithc        = ["ithc"]
  }

}
