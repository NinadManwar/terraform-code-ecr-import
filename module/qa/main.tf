resource "aws_ecr_repository" "qa-api-gateway" {
  name                 = "${var.env}-api-gateway"
  image_tag_mutability = var.image_tag_mutability

  image_scanning_configuration {
    scan_on_push = true
  }
}

resource "aws_ecr_repository" "qa-notifications" {
  name                 = "${var.env}-notifications"
  image_tag_mutability = var.image_tag_mutability

  image_scanning_configuration {
    scan_on_push = true
  }

}

resource "aws_ecr_repository" "qa-service-registry" {
  name                 = "${var.env}-service-registry"
  image_tag_mutability = var.image_tag_mutability

  image_scanning_configuration {
    scan_on_push = true
  }
}


resource "aws_ecr_repository" "qa-user-mgmt" {
  name                 = "${var.env}-user-mgmt"
  image_tag_mutability = var.image_tag_mutability

  image_scanning_configuration {
    scan_on_push = true
  }
}
