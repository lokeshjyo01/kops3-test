resource "aws_s3_bucket" "state_store" {
  bucket        = "lkcloudtech.live"
  force_destroy = true
}