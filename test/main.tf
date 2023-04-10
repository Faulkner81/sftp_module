module "storage_sftp" {
    source = "../"
  
   sftp_users = [
    {
      name           = "foo"
      home_directory = "foo/example" # `example` is a subdirectory under `foo` container
      permissions_scopes = [
        {
          target_container = "foo"
        },
        {
          target_container = "bar"
          permissions      = ["Read", "Write", "List"]
        },
      ]
    }
  ]

}