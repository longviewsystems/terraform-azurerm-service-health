variable "location" {
  type        = string
  description = "value of the location"
}

variable "email_address" {
  type        = string
  description = "value of the email address"
}

variable "tags" {
  type = map(string)
}