variable "s3_config" {
  type = map
  default = {
    "acl"    = "private"
    "region" = "us-east-1"
    "name"   = "s3-udacity-standout-bucket"
  }
}
