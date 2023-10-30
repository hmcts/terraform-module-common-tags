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

# Acceptable values are true, false, on-demand (on-demand start-up cluster)
variable "autoShutdown" {
  description = "Enable auto shutdown of resource"
  default     = false
}

variable "expiresAfter" {
  description = "Expiry date of the resource. Valid format 'YYYY-MM-DD'. "
  type        = string
  default     = "0000-00-00"
  validation {
    condition     = can(regex("\\d{4}-\\d{2}-\\d{2}", var.expiresAfter))
    error_message = "Valid date formast is 'YYYY-MM-DD'."
  }
}