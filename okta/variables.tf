variable "okta_org_name" {
  type        = string
  description = "Okta org subdomain (the part before .okta.com). Example: if your admin URL is https://mycompany-admin.okta.com, use 'mycompany'. Do NOT use the Organization ID."
}

variable "okta_api_token" {
  type        = string
  sensitive   = true
  description = "Okta API token (Admin > Security > API > Tokens)."
}

variable "okta_base_url" {
  type        = string
  default     = "okta.com"
  description = "Okta domain. Use 'oktapreview.com' if your org URL is *.oktapreview.com; use 'okta.com' for production."
}
