variable Rgs{
  
}

resource "azurerm_resource_group" "rg" {

    for_each = var.Rgs
  name     = each.value.name
  location = each.value.location
}