variable "subaccount_id" {
  description = "The ID of the subaccount."
  type        = string
}

variable "default_origin_id" {
  description = "The default origin ID used when no specific origin ID is provided in a role collection assignment."
  type        = string
  default     = null
}

variable "role_collection_assignments" {
  description = "List of role collection assignments. Each entry defines a role collection and the groups to assign to it."
  type = list(object({
    role_collection_name = string
    origin_id            = optional(string)
    group_names          = list(string)
  }))
}
