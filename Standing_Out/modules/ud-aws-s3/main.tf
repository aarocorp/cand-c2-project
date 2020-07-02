# https://www.terraform.io/docs/providers/aws/r/s3_bucket.html
resource "random_string" "default" {
  length        = 16
  upper         = false
  lower         = true
  number        = false
  special       = false
  min_lower     = 3
}

resource "aws_s3_bucket" "main_bucket" {
  bucket = random_string.default.result
  acl    = var.s3_config[var.acl]

  tags = {
    Name = var.s3_config[var.name]
  }
}
