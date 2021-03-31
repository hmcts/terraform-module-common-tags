variable "environment" {
  description = "Name of the environment to deploy the resource"
  type        = string
}
variable "application" {
  description = "Enter name of the application that Utilizes this resource."
  type        = string
}
variable "businessArea" {
  description = "Name of the business area this application belongs to, one of CFT / Crime / Cross-Cutting."
  type        = string
}
variable "builtFrom" {
  description = "Enter name of the GitHub repository this application is being build from."
  type        = string
}
