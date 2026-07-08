variable "project_name" {
  description = "Name prefix used for tagging and resource names."
  type        = string
  default     = "portfolio"
}

variable "aws_region" {
  description = "Primary AWS region for the S3 bucket."
  type        = string
  default     = "us-east-1"
}

variable "bucket_name" {
  description = "Globally-unique S3 bucket name that hosts the site content."
  type        = string
}

variable "index_document" {
  description = "Root object served by CloudFront."
  type        = string
  default     = "index.html"
}

variable "error_document" {
  description = "Object returned for 403/404 responses."
  type        = string
  default     = "index.html"
}

variable "github_repository" {
  description = "GitHub repo allowed to assume the deploy role, as owner/name."
  type        = string
  # e.g. "timobi/portfolio"
}

variable "github_branch" {
  description = "Branch allowed to deploy via OIDC."
  type        = string
  default     = "main"
}
