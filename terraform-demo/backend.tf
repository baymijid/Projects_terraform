terraform {
  backend "s3" {
    bucket         = "de-bootcampbay"
    key            = "tfstate/dev.tfstate"
    region         = "ap-southeast-2"
    # dynamodb_table = "tfstate-lock"
    encrypt        = true
  }
}