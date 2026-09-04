module "resource_group" {
  source = "../Child_module/resource_group"
    Rgs = {
        rg1 = {
            name     = "resource_2"
            location = "East US"
        }

         rg2 = {
            name     = "resource_3"
            location = "West US"
        }


    }

}


module "storage_account1" {
    source = "../Child_module/storage_account1"
    depends_on = [module.resource_group]
   SAA = {
        SA1 = {
            name                     = "sa1aastha123454556"
            resource_group_name      = "resource_2"
            location                 = "East US"
            account_tier             = "Standard"
            account_replication_type = "LRS"

        }
    }
}



