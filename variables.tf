variable "location" {
  type        = string
  description = "value of the location"
}

variable "email_address" {
  type        = string
  description = "value of the email address"
}

variable "tags" {
  type        = map(string)
  description = "value of the tags"
}

variable "subscription_id" {
  type        = list(string)
  description = "List of the subscription ids for scope"
}