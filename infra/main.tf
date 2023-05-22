locals {
  s3_origin_id = "${aws_s3_bucket.magicly_work.id}.s3.${aws_s3_bucket.magicly_work.region}.amazonaws.com"
}

resource "aws_cloudfront_origin_access_control" "magicly_work" {
  name                              = "magicly_work"
  description                       = "Policy for magicly.work"
  origin_access_control_origin_type = "s3"
  signing_behavior                  = "always"
  signing_protocol                  = "sigv4"
}

resource "aws_cloudfront_distribution" "magicly_work" {
  enabled         = true
  is_ipv6_enabled = true
  price_class     = "PriceClass_100"

  default_cache_behavior {
    allowed_methods        = ["GET", "HEAD", "OPTIONS"]
    cached_methods         = ["GET", "HEAD"]
    target_origin_id       = local.s3_origin_id
    cache_policy_id        = "658327ea-f89d-4fab-a63d-7e88639e58f6"
    viewer_protocol_policy = "redirect-to-https"
    compress               = true
    min_ttl                = 60
    default_ttl            = 3600
    max_ttl                = 86400
  }

  origin {
    # s3 regional bucket domains omit us-east-1 until this fix scheduled for v5 is released
    # https://github.com/hashicorp/terraform-provider-aws/pull/25724
    domain_name              = local.s3_origin_id
    origin_access_control_id = aws_cloudfront_origin_access_control.magicly_work.id
    origin_id                = local.s3_origin_id
  }

  restrictions {
    geo_restriction {
      restriction_type = "none"
      locations        = []
    }
  }

  viewer_certificate {
    cloudfront_default_certificate = true
  }
}

resource "aws_s3_bucket" "magicly_work" {}

resource "aws_s3_bucket_public_access_block" "magicly_work" {
  bucket                  = aws_s3_bucket.magicly_work.id
  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}

resource "aws_s3_bucket_policy" "allow_access_from_magicly_work" {
  bucket = aws_s3_bucket.magicly_work.id
  policy = data.aws_iam_policy_document.allow_access_from_magicly_work.json
}

data "aws_iam_policy_document" "allow_access_from_magicly_work" {
  statement {
    sid = "Allow GET requests originating from CloudFront."
    actions = [
      "s3:GetObject",
    ]

    condition {
      test     = "StringEquals"
      variable = "AWS:SourceArn"
      values   = [aws_cloudfront_distribution.magicly_work.arn]
    }

    principals {
      type        = "Service"
      identifiers = ["cloudfront.amazonaws.com"]
    }

    resources = [
      "${aws_s3_bucket.magicly_work.arn}/*",
    ]
  }
}
