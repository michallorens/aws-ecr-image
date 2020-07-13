variable path {
  type        = string
  description = "A path or URL of the Dockerfile"
}

variable name {
  type        = string
  description = "Name of the docker image"
}

variable release {
  type        = string
  description = "Release version of the docker image"
  default     = "latest"
}