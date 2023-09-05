# Terraform Resource to Create Azure Resource Group with Input Variables defined in variables.tf
resource "azurerm_resource_group" "main_rg" {
  name = "rg-${var.product_name}-${var.environment}-01"
  location = var.location


  tags = {
  Environment = "${var.environment}"
  Provisioned = "Terraform"
  }
}


