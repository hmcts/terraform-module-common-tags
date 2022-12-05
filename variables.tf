variable "environment" {
  description = "Name of the environment to deploy the resource."
  type        = string
}
variable "product" {
  description = "Name of the product."
  type        = string
}

variable "builtFrom" {
  description = "Name of the GitHub repository this application is being built from."
  type        = string
}

variable "autoShutdown" {
  description = "Enable auto shutdown of resource"
  type        = bool
  default     = false
}