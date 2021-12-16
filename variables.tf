provider "aws" {
  #  shared_credentials_file = "~/.aws/credentials"
  #  shared_credentials_file = "%USERPROFILE%\.aws\credentials"
  /*
      Shared credential files is a text file with the following format:
        [<PROFILE>]
        aws_access_key_id = <ACCESS_KEY_ID>
        aws_secret_access_key = <SECRET_ACCESS_KEY
  */
  shared_credentials_file = "C:/Users/Wireless-Lala/.aws/credentials"
  profile                 = "defult"

}


variable "env" {
  description = "Depolyment environment"
  default     = "dev"
}

variable "region" {
  description = "AWS region"
  default     = "eu-east-1"
}

variable "repository_branch" {
  description = "Repository branch to connect to"
  default     = "main"
}

variable "repository_owner" {
  description = "GitHub repository owner"
  default     = "lateeflamina"
}

variable "repository_name" {
  description = "GitHub repository name"
  default     = "static-web-example"
}

variable "static_web_bucket_name" {
  description = "S3 Bucket to deploy to"
  default     = "static-web-example-bucket"
}

variable "artifacts_bucket_name" {
  description = "S3 Bucket for storing artifacts"
  default     = "static-web-example-artifacts"
}

variable "github_token" {
}

output "web_public_url" {
  value = aws_s3_bucket.static_web_bucket.website_endpoint
}
