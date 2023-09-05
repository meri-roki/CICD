# Create Virtual Network for AKS
resource "azurerm_virtual_network" "vnet_aks" {
  name                = "vnet-${var.environment}-${var.location_abbreviation}-01"
  location            = azurerm_resource_group.main_rg.location
  resource_group_name = azurerm_resource_group.main_rg.name
  address_space       = ["***********"]
    
  tags = {
    Environment = "${var.environment}"
    Provisioned = "Terraform"
  }
}

# Create a Default Subnet For AKS
resource "azurerm_subnet" "snet_aks" {
  name                 = "snet-${var.environment}-${var.location_abbreviation}-01"
  virtual_network_name = azurerm_virtual_network.vnet_aks.name
  resource_group_name  = azurerm_resource_group.main_rg.name
  address_prefixes     = ["1***********"]
  service_endpoints    = ["***********"]
}

# Create a Subnet for MySQL DBMS
resource "azurerm_subnet" "snet_mysql" {
  name                 = "snet-${var.environment}-${var.location_abbreviation}-02"
  virtual_network_name = azurerm_virtual_network.vnet_aks.name
  resource_group_name  = azurerm_resource_group.main_rg.name
  address_prefixes     = ["10.160.245.0/25"]
  service_endpoints    = ["***********"]
  delegation {
    name = "***********"
    service_delegation {
      name = "***********"
      actions = [
        "***********",
      ]
    }
  }
}

# Create public IP for K8s cluster
resource "azurerm_public_ip" "pip_aks" {
  name                 = "pip-aks-${var.environment}-${var.location_abbreviation}-01"
  location             = azurerm_resource_group.main_rg.location
  resource_group_name  = azurerm_resource_group.main_rg.name
  sku                  = "***********"
  allocation_method    = "***********"

  tags = {
    Environment = "${var.environment}"
    Provisioned = "Terraform"
  }
}
