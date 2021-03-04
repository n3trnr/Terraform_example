provider "aws" {

  shared_credentials_file = "/Users/tf_user/.aws/creds"
  region     = "ap-northeast-2"
}

module "natam-iam" {
  source = "./natam-iam-dir/"
}
module "natam-dev" {
  source = "./dev/"
}
module "natam-prd" {
  source = "./prd/"
}
