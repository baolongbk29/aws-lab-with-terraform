resource "aws_s3_bucket" "devlab-s3" {
  bucket = "longlb-lab-01-tf"
  tags = {
    Name        = "Dev bucket"
    Environment = "Dev"
  }

}