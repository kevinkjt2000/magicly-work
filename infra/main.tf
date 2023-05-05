resource "aws_s3_bucket" "magicly_work" {}

resource "aws_s3_bucket_public_access_block" "magicly_work" {
  bucket = aws_s3_bucket.magicly_work.id
}

resource "aws_s3_bucket_policy" "allow_access_from_magicly_work" {
  bucket = aws_s3_bucket.magicly_work.id
  policy = data.aws_iam_policy_document.allow_access_from_magicly_work.json
}

data "aws_iam_policy_document" "allow_access_from_magicly_work" {
  policy_id = "http referer policy example"

  statement {
    sid = "Allow get requests referred by www.magicly.work."
    actions = [
      "s3:GetObject",
    ]

    condition {
      test = "StringLike"
      variable = "aws:Referer"

      values = [
        "https://www.magicly.work/*",
        "https://magicly.work/*",
      ]
    }

    principals {
      type = "*"
      identifiers = ["*"]
    }

    resources = [
      "${aws_s3_bucket.magicly_work.arn}/*",
    ]
  }

  statement {
    sid = "Explicit deny to ensure requests are allowed only from specific referer."
    actions = [
      "s3:GetObject",
    ]

    condition {
      test = "StringNotLike"
      variable = "aws:Referer"

      values = [
        "https://www.magicly.work/*",
        "https://magicly.work/*",
      ]
    }

    effect = "Deny"

    principals {
      type = "*"
      identifiers = ["*"]
    }

    resources = [
      "${aws_s3_bucket.magicly_work.arn}/*",
    ]
  }
}
