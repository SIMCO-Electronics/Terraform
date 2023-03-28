terraform {
  backend "gcs" {
    bucket = "bkt-prj-b-seed-tfstate-13e6" #UPDATE_ME
    prefix = "terraform/environments-new/support"
  }
}
