
resource "aws_s3_bucket" "bucket" {
    bucket = "bucket-tfstate"  
    
    tags = {
        Name = "S3 Remote Terraform State Store"
    }
}