terraform {
  required_providers {    
    databricks = {
      source = "databricks/databricks"
    }
  }

  #specifies which Terraform Cloud workspaces to use for  accessing shared state and any environment variables.
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

