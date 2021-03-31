variable "environment" {
  description = "Enter name of the environment to deploy the resource."
  type        = string
}
variable "application" {
  description = "Enter name of the application that Utilizes this resource."
  type        = string
}
variable "businessArea" {
  description = "Enter name of the business area this application belong to."
  type        = string
}
variable "builtFrom" {
  description = "Enter name of the GitHub repository this application is being build from."
  type        = string
}