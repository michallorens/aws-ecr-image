output image {
  value = data.external.docker-push.result.image
}

output build {
  value = data.external.docker-build.result.output
}

output login {
  value = data.external.docker-login.result.output
}

output config {
  value = data.external.docker-login.result.config
}

output push {
  value = data.external.docker-push.result.output
}

output ecr {
  value = local.ecr
}