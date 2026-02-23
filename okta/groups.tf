# If these groups already exist in Okta, import them instead of creating:
#   terraform import okta_group.engineering <group_id>
#   terraform import okta_group.aws_console_users <group_id>
# See IMPORT_GROUPS.md for details.
resource "okta_group" "engineering" {
  name        = "DEPT_Engineering"
  description = "Engineering department"
}

resource "okta_group" "aws_console_users" {
  name        = "APP_AWS_CONSOLE_USERS"
  description = "Users allowed to access AWS console"
}
