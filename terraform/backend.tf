# ---------------------------------------------------------------------------
# Remote state backend (S3)
# ---------------------------------------------------------------------------
# The backend is intentionally commented out for the FIRST run so Terraform
# can create the state bucket using local state.
#
# Bootstrap steps:
#   1. Leave this block commented out and run:
#        terraform init
#        terraform apply        # creates the S3 state bucket + site resources
#   2. Create (or confirm) an S3 bucket to hold remote state, e.g.
#        portfolio-site-tfstate   (versioning enabled recommended)
#   3. Uncomment the block below, fill in the bucket name, then run:
#        terraform init -migrate-state
#      Terraform will copy your local state into S3.
#
# terraform {
#   backend "s3" {
#     bucket       = "portfolio-site-tfstate" # <-- your state bucket name
#     key          = "portfolio-site/terraform.tfstate"
#     region       = "ap-south-1"
#     encrypt      = true
#     use_lockfile = true # S3-native state locking (Terraform >= 1.10)
#   }
# }
