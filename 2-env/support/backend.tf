terraform {
  backend "gcs" {
    bucket = "bkt-prj-b-seed-tfstate-888f" #UPDATE_ME
    prefix = "terraform/environments-new/support"
  }
}
