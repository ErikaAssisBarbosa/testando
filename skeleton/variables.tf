variable "region" {
  default     = ${{values.aws_region}}
  description = "AWS region"
  type        = string
}

variable "hostedzone_ns" {
  default     = "goldnugget.inlabs.app"
  description = "AWS Hostedzone NS record name"
  type        = string
}
