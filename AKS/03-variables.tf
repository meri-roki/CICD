# Define Input Variables
# 1. Azure Location (CentralUS)
# 2. Azure Resource Group Name 
# 3. Azure AKS Environment Name (Dev, QA, Prod)

# Azure Location
variable "location" {
  type = string
  description = "Azure Region where all these resources will be provisioned"
  # Germany West Central
  default = "***********"
}

# Azure Resource Group Name
variable "location_abbreviation" {
  type = string
  description = "Azure Region abbreviation name where all these resources will be provisioned"
  default = "***********"
}

# Azure Resource Group Name
variable "product_name" {
  type = string
  description = "This variable defines the product name that we deploy here"
  default = "wepadigital"
}

# Azure Project Environment Name
variable "environment" {
  type = string  
  description = "This variable defines the Environment"  
  default = "***********"
}

# Azure Keyvault Resource Group that Azure Keyvault exists for terraform sensitive data
variable "keyvault_rg" {
  type = string  
  description = "This variable defines the Keyvault Name"  
  default = "***********"
}

# Azure Keyvault Name for terraform sensitive data
variable "keyvault_name" {
  type = string  
  description = "This variable defines the Keyvault Name"  
  default = "***********"
}

# Azure Container Registry Name
variable "container_registry_name" {
  type = string
  description = "This variable defines the Container Registry Name"
  default = "***********"
}
