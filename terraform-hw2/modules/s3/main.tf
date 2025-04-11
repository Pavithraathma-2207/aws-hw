resource "aws_s3_bucket" "static_site" {
  bucket        = "my-static-site-${random_id.id.hex}"
  force_destroy = true
}

resource "random_id" "id" {
  byte_length = 4
}
