variable "environment" {
  description = "Name of the environment to deploy the resource"
  type        = string
}
variable "application" {
  description = "Name of the application, e.g. 'probate', 'divorce', use 'core' for platform infrastructure"
  type        = string
}
variable "businessArea" {
  description = "Name of the business area this application belongs to, one of CFT / Crime / Cross-Cutting."
  type        = string
}
variable "builtFrom" {
  description = "Name of the GitHub repository this application is being built from."
  type        = string
}
