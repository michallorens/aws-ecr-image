output image {
  value = data.external.docker-build.result.image
}

output build {
  value = data.external.docker-build.result.output
}

output login {
  value = data.external.docker-login.result.output
}

output push {
  value = data.external.docker-push.result.output
}

output registry {
  value = local.registry
}