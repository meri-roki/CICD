# Provision AKS Cluster

resource "azurerm_container_registry" "acr" {
  name                = "***********"
  location            = azurerm_resource_group.main_rg.location
  resource_group_name = azurerm_resource_group.main_rg.name
  sku                 = "***********"
  admin_enabled       = "***********"

  tags = {
    Environment = "${var.environment}"
    Provisioned = "Terraform"
  }
}