# Resource Group
resource "azurerm_resource_group" "ranjeet-rg" {
  name     = "ranjeet-rg-availability-set"
  location = "Central India"
}

# Availability Set
resource "azurerm_availability_set" "availabilityset" {
  name                = "my-availability-set"
  location            = azurerm_resource_group.ranjeet-rg.location
  resource_group_name = azurerm_resource_group.ranjeet-rg.name

  managed                         = true
  platform_fault_domain_count     = 2
  platform_update_domain_count    = 5

  tags = {
    environment = "dev"
  }
}