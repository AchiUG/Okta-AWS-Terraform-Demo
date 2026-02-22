resource "okta_app_oauth" "cicd_demo" {
  label          = "okta-aws-cicd-demo"
  type           = "web"
  grant_types    = ["authorization_code"]
  response_types = ["code"]
  redirect_uris  = ["https://example.com/callback"]
}
