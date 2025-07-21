
variable "policy_name" {
  default = "deny-non-eastus-resources"
}

variable "display_name" {
  default = "Deny non-East US resources"
}

variable "assignment_name" {
  default = "deny-non-eastus-assignment"
}

variable "scope" {
  description = "Scope where the policy should be applied"
  default     = "/subscriptions/your-subscription-id"
}

