# Module to creating s3 buckets
module "bucket-creation" {
  source = "./modules/s3creation"
  count  = length(var.bucket)
  bucket = var.bucket[count.index]
  providers = {
    aws = aws.Oregon
  }
}

output "bucket-arn" {
  value = module.bucket-creation.*
}

# Making a change to test workflow 001
# change 001
