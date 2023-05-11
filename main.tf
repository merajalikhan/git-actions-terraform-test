terraform {
  required_providers {    
    databricks = {
      source = "databricks/databricks"
    }
  }
  provider "databricks" {}
    
  data "databricks_current_user" "logged_in_user" {}
  
  backend "remote" {
         # The name of your Terraform Cloud organization.
         organization = "mk-test-organisation"

         # The name of the Terraform Cloud workspace to store Terraform state files in.
         workspaces {
           name = "learn-terraform-github-action"
         }
       }
}

