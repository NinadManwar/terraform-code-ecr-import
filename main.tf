
provider "aws" {
  region     = "us-east-1"
  access_key = ""
  secret_key = ""
}

# import {
#   to = module.ECR.aws_ecr_repository.test-service-registry
#   id = "prod-service-registry"
# }

# import {
#   to = aws_ecr_repository.test-api-gateway
#   id = "prod-api-gateway"
# }


# resource "aws_ecr_repository" "test-api-gateway" {
#   name                 = "${var.env}-api-gateway"
#   image_tag_mutability = "IMMUTABLE"

#   image_scanning_configuration {
#     scan_on_push = true
#   }
# }

# import {
#   to =  aws_ecr_repository.test-notifications
#   id = "prod-notifications"
# }

# resource "aws_ecr_repository" "test-notifications" {
#   name                 = "${var.env}-notifications"
#   image_tag_mutability = "IMMUTABLE"

#   image_scanning_configuration {
#     scan_on_push = true
#   }

# }

# import {
#   to = aws_ecr_repository.test-service-registry
#   id = "prod-service-registry"
# }

# resource "aws_ecr_repository" "test-service-registry" {
#   name                 = "${var.env}-service-registry"
#   image_tag_mutability = "IMMUTABLE"

#   image_scanning_configuration {
#     scan_on_push = true
#   }
# }

# import {
#   to = aws_ecr_repository.test-user-mgmt
#   id = "prod-user-mgmt"
# }

# resource "aws_ecr_repository" "test-user-mgmt" {
#   name                 = "${var.env}-user-mgmt"
#   image_tag_mutability = "IMMUTABLE"

#   image_scanning_configuration {
#     scan_on_push = false
#   }
# }

# locals {
#   repositories = {
#     "notifications" = {
#       image_tag_mutability  = "IMMUTABLE"
#     }

#     "api-gateway" = {
#       image_tag_mutability  = "IMMUTABLE"
#     }

#     "service-registry" = {
#       image_tag_mutability  = "IMMUTABLE"
#     }

#     "user-mgmt" = {
#       image_tag_mutability  = "IMMUTABLE"
#     }
#   }
# }

module "qa" {
  source   = "./module/qa"
  # for_each = local.repositories

  # name                  = each.key
  # image_tag_mutability  = each.value.image_tag_mutability
}

module "dev" {
  source   = "./module/dev"
  # for_each = local.repositories

  # name                  = each.key
}

