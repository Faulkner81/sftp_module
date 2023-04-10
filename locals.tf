locals {
  sftp_users = {
    for user in var.sftp_users : user.name => user
  }

  sftp_users_permissions_map = {
    "All"    = "rwldc"
    "Read"   = "r"
    "Write"  = "w"
    "List"   = "l"
    "Delete" = "d"
    "Create" = "c"
  }

}
