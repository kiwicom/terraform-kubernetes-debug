variable "container_version" {
  default = "latest"
}

variable "namespace" {
  default = "system"
}

variable "name" {
  default = "kw-debug"
}

variable "image_pull_secrets_name" {
  default = "gitlab"
}
