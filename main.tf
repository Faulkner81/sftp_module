resource "azurerm_storage_container" "example" {
  name                  = "content"
  storage_account_name  = data.terraform_remote_state.sftp-storage.outputs.test-sftp-storage-account-name
  container_access_type = "private"
}

