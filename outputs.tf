output "bucket_name" {
  value       = aws_s3_bucket.this.bucket
  description = "Name of bucket created for terraform state"
}

output "bucket_arn" {
  value       = aws_s3_bucket.this.arn
  description = "ARN of bucket created for terraform state"
}

output "table_name" {
  value       = aws_dynamodb_table.this.name
  description = "Name of dynamodb table created for terraform state"
}

output "table_arn" {
  value       = aws_dynamodb_table.this.arn
  description = "ARN of dynamodb table created for terraform state"
}