
resource "databricks_notebook" "nb1" {
  path     = "${data.databricks_current_user.logged_in_user.home}/${var.notebook_subdirectory}/${var.notebook_filename}"
  language = var.notebook_language
  source   = "./${var.notebooks_folder}/${var.notebook_filename}"
}

resource "databricks_notebook" "nb2" {
  path     = "${data.databricks_current_user.logged_in_user.home}/${var.notebook_subdirectory}/mk-test-notebook.py"
  language = var.notebook_language
  source   = "./${var.notebooks_folder}/mk-test-notebook.py"
}

output "notebook_url" {
 value = databricks_notebook.nb2.url
}




resource "databricks_notebook" "nbx" {
  for_each = fileset(path.module, "Notebooks/*")
  source   = "${each.value}"
  path     = "Shared/TestProjects/${each.value}"
  #language = var.notebook_language    
}