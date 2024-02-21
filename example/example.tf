provider "aws" {
  region = "us-east-1"
}
module "mfa" {
  source      = "../"
  name        = "mfa1"
  environment = "test"
  users       = []
  groups      = []

}

