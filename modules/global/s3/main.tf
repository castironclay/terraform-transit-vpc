resource "aws_s3_bucket" "bucket" {
  bucket        = "${var.bucket_name}"
  region        = "${var.bucket_region}"
  force_destroy = "${var.force_destroy}"

  server_side_encryption_configuration {
    "rule" {
      "apply_server_side_encryption_by_default" {
        sse_algorithm = "AES256"
      }
    }
  }

  versioning {
    enabled = "${var.versioning}"
  }

  tags {
    Owner = "${var.tag_owner}"
  }
}
