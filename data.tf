
# datasource that reads the info from vpc statefile 
data "terraform_remote_state" "vpc" {
  backend = "s3"
  config = {
    bucket = "terraformbasicdevopsstatebucket"
    key    = "dev/vpc/terraform.tfstate"
    region = "us-east-1"
  }
}