terraform {
  required_providers {    
    databricks = {
      source = "databricks/databricks"
    }
  }
}
provider "databricks" {}
    
data "databricks_current_user" "logged_in_user" {
    
}
