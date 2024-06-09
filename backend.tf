#terraform {
#  backend "s3" {
#    bucket         = "bucket-tfstate"
#    key            = "terraform.tfstate"
#    region         = "us-west-1"
#    dynamodb_table = "terraform-lock-table"
 # }
#} 