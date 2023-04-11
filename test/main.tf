module "storage_sftp" {
  source = "../"
  #targetcontainer = azurerm_storage_container.target.name

  containers = [
    {
      name = "bloc1"
    },
    {
      name = "bloc2"
      # container_access_type = "blob"
    }
  ]


  sftp_users = [
    {
      name                 = "foo"
      #home_directory       = "foo/example" # `example` is a subdirectory under `foo` container
      ssh_key_enabled = true
      permissions_scopes = [
        {
          target_container = "bloc1"
        },
        {
          target_container = "bloc2"
          permissions      = ["Read", "Write", "List"]
        },
      ]
    },
      {
        name = "bar"
        ssh_key_enabled = false
        ssh_password_enabled = true
        permissions_scopes = [
          {
            target_container = "bloc2"
          },
          {
            target_container = "bloc2"
            permissions      = ["List", "Create"]
          },
        ]
    #    ssh_authorized_keys = [{
    #      key         = tls_private_key.bar_example.public_key_openssh
    #      description = "Example"
    #    }]

    #    }]
      }
  ]
}