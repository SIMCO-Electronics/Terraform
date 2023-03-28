terraform {
  backend "gcs" {
    bucket = "bkt-prj-b-seed-tfstate-888f"
    prefix = "terraform/bootstrap/state"
  }
}
