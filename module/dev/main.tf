resource "aws_ecr_repository" "dev-api-gateway" {
  name                 = "${var.env}-api-gateway"
  image_tag_mutability = var.image_tag_mutability

  image_scanning_configuration {
    scan_on_push = true
  }
}

resource "aws_ecr_repository" "dev-notifications" {
  name                 = "${var.env}-notifications"
  image_tag_mutability = var.image_tag_mutability

  image_scanning_configuration {
    scan_on_push = true
  }

}

resource "aws_ecr_repository" "dev-service-registry" {
  name                 = "${var.env}-service-registry"
  image_tag_mutability = var.image_tag_mutability

  image_scanning_configuration {
    scan_on_push = true
  }
}


resource "aws_ecr_repository" "dev-user-mgmt" {
  name                 = "${var.env}-user-mgmt"
  image_tag_mutability = var.image_tag_mutability

  image_scanning_configuration {
    scan_on_push = true
  }
}
