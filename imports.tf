import {
  to =  module.qa.aws_ecr_repository.qa-user-mgmt
  id = "qa-user-mgmt"
}

import {
  to = module.qa.aws_ecr_repository.qa-service-registry
  id = "qa-service-registry"
}

import {
  to =  module.qa.aws_ecr_repository.qa-notifications
  id = "qa-notifications"
}

import {
  to = module.qa.aws_ecr_repository.qa-api-gateway
  id = "qa-api-gateway"
}

import {
  to =  module.dev.aws_ecr_repository.dev-user-mgmt
  id = "dev-user-mgmt"
}

import {
  to = module.dev.aws_ecr_repository.dev-service-registry
  id = "dev-service-registry"
}

import {
  to =  module.dev.aws_ecr_repository.dev-notifications
  id = "dev-notifications"
}

import {
  to = module.dev.aws_ecr_repository.dev-api-gateway
  id = "dev-api-gateway"
}