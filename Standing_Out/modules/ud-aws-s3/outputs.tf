# S3 outputs
output "s3_arns" {
   value = aws_s3_bucket.main_bucket.arn
}

output "s3_ids" {
   value = aws_s3_bucket.main_bucket.id
}

output "s3_bucket_domain_name" {
   value = aws_s3_bucket.main_bucket.bucket_domain_name
}

output "s3_bucket_regional_domain_name" {
   value = aws_s3_bucket.main_bucket.bucket_regional_domain_name
}
