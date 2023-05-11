/*
resource "databricks_cluster" "shared_autoscaling" {
  cluster_name            = var.cluster_name
  spark_version           = "12.2 LTS (includes Apache Spark 3.3.2, Scala 2.12)"
  node_type_id            = "Standard_DS3_v2"
  autotermination_minutes = 10  

  autoscale {
    min_workers = 0
    max_workers = 1
  }
}
*/
