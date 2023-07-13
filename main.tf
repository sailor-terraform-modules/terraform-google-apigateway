resource "google_project_service" "reqapi" {
  project = var.project_id
  service = "apigateway.googleapis.com"
}
resource "google_project_service" "reqapi2" {
  project = var.project_id
  service = "servicecontrol.googleapis.com"
}
resource "google_project_service" "reqapi3" {
  project = var.project_id
  service = "servicemanagement.googleapis.com"
}
resource "google_api_gateway_api" "api_gw" {
  project  = var.project_id
  provider = google-beta
  api_id   = var.apigw_name
}