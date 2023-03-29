terraform {
  backend "gcs" {
    bucket = "bkt-prj-b-seed-tfstate-da54"
    prefix = "terraform/networks/it_infra"
  }
}