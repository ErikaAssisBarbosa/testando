terraform {
  backend "s3" {
    bucket = ${{values.bucket_name}}
    key    = ${{values.key_path}}
    region = ${{values.aws_region}}
  }
}
