data "terraform_remote_state" "sftp-storage" {
    
  backend = "azurerm"
  config = {
    resource_group_name = "tfstate"
    storage_account_name         = "tfstate16843"
    container_name               = "tfstate"
    key                          = "sftp.terraform.tfstate"

  }
}