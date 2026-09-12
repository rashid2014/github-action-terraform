resource "aws_s3_bucket" "my_bucket" {
  bucket        = "${var.bucket_name}-${random_id.rand.hex}"
  force_destroy = true
}

resource "random_id" "rand" {
  byte_length = 4
}

#Deploy an IAM Role with PowerUserIAMPolicy
#Deploy an RDS Instance