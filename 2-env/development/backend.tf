terraform {
  backend "gcs" {
    bucket = "bkt-prj-b-seed-tfstate-da54" #UPDATE_ME
    prefix = "terraform/environments-new/development"
  }
}
