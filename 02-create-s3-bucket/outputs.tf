output "s3_bucket_id" {
  description = "The name of the bucket"
  value       = aws_s3_bucket.devlab-s3.id
}

output "s3_bucket_region" {
  description = "The AWS region this bucket resides in"
  value       = aws_s3_bucket.devlab-s3.region
}