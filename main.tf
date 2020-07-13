data aws_caller_identity default {}

data aws_region default {}

locals {
  tag = "${data.aws_caller_identity.default.account_id}.dkr.ecr.${data.aws_region.default.name}.amazonaws.com/${var.name}:${var.release}"
}

data external docker-build {
  program = ["bash", "${path.module}/docker_build.sh", var.path, local.tag]
}

data external docker-login {
  program = ["bash", "${path.module}/docker_login.sh", data.aws_region.default.name, data.aws_caller_identity.default.account_id]
}

data external docker-push {
  program = ["bash", "${path.module}/docker_push.sh", data.external.docker-build.result.image]

  depends_on = [data.external.docker-login]
}

resource aws_ecr_repository default {
  name = var.name
}