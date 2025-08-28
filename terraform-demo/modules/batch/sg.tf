# SG for Batch tasks (egress only)
resource "aws_security_group" "batch" {
  name        = "${local.name}-batch-sg"
  description = "Batch Fargate tasks egress"
  vpc_id      = var.vpc_id

  ingress {
    from_port = 443
    to_port = 443
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "${local.name}-batch-sg"
  }
}


# # SG for Batch tasks (egress only)
# resource "aws_security_group" "batch" {
#   name        = "${local.name}-sg"
#   description = "Batch Fargate tasks egress"
#   vpc_id      = var.vpc_id

#   egress {
#     from_port = 0
#     to_port = 0
#     protocol = "-1"
#     cidr_blocks = ["0.0.0.0/0"]
#   }

#   tags = {
#     Name = "${local.name}-sg"
#   }
# }
