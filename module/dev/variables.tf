variable "env" {
  type = string
  description = "(Optional) Repository environment. {project_family}/{environment}/{name}."
  default = "dev"
}

variable "image_tag_mutability" {
  type = string
  description = "(Optional) The tag mutability setting for the repository. Must be one of: MUTABLE or IMMUTABLE. Defaults to MUTABLE"
  default = "IMMUTABLE"
}

# variable "name" {
#   type = string
#   description = "(Required) Name of the repository. {project_family}/{environment}/{name}."
# }
