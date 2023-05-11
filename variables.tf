variable "notebook_subdirectory" {
  description = "A name for the subdirectory to store the notebook."
  type        = string
  default     = "Terraform"
}

variable "notebook_filename" {
  description = "The notebook's filename."
  type        = string
}

variable "notebook_language" {
  description = "The language of the notebook."
  type        = string
}

variable "notebooks_folder" {
  description = "The folders for the notebooks."
  type        = string
}

variable "databricks_host" {
  description = "Databricks host name (workspace)."
  type        = string
}


variable "pa_token" {
  description = "The databricks PAT."
  type        = string
}

variable "cluster_name"{
    type        = string
}



