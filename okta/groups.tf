resource "okta_group" "engineering" {
  name        = "DEPT_Engineering"
  description = "Engineering department"
}

resource "okta_group" "aws_console_users" {
  name        = "APP_AWS_CONSOLE_USERS"
  description = "Users allowed to access AWS console"
}
