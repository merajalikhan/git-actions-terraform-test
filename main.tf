terraform {
  required_providers {    
    databricks = {
      source = "databricks/databricks"
    }
  }
  cloud {
    organization = "mk-test-organisation"

    workspaces {
      name = "learn-terraform-github-action"
    }
  }
}
provider "databricks" {
  
}
    
data "databricks_current_user" "logged_in_user" {}

