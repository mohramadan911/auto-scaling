terraform {
  source = "..//complete"
}

remote_state {
  backend = "s3"
  config = {
    bucket = "nw-bucket-terraform-state-nw-0562876207"
    key = "test/terraform.tfstate"
    region = "eu-central-1"
    dynamodb_table = "nw-ddbtable-terraform-state"
    encrypt = true
  }
}

prevent_destroy = true

inputs = {}