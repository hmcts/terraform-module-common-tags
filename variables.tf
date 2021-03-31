variable "environment" {
  description = "Name of the environment to deploy the resource"
  type        = string
}
variable "application" {
  description = "Name of the application, e.g. 'probate', 'divorce', use 'core' for platform infrastructure"
  type        = string
  validation {
    condition = can(regex("^probate|^divorce|^core", var.application))
    error_message = "Name of the application is one of 'probate' / 'divorce' / 'core'."
  }
}
variable "businessArea" {
  description = "Name of the business area this application belongs to, one of CFT / Crime / Cross-Cutting."
  type        = string
  validation {
    condition = can(regex("^CFT|^Crime|^Cross-Cutting", var.businessArea))
    error_message = "Name of the businessArea this application belongs to, one of 'CFT' / 'Crime' / 'Cross-Cutting'."
  }
}
variable "builtFrom" {
  description = "Name of the GitHub repository this application is being built from."
  type        = string
}