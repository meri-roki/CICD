resource "helm_release" "storage_class" {
  name             = "azure-custom-sc"
  chart            = "./helm-charts/azure-custom-sc"

  values = [
    "${file("./helm-charts/azure-custom-sc/values.yaml")}"
  ]

# Azure File storage account NFS parameters
  set {
    name  = "azureFileStorageClass.location"
    value = "***********"
  }

  set {
    name  = "azureFileStorageClass.storageAccount"
    value = "***********"
  }

  set {
    name  = "azureFileStorageClass.resourceGroup"
    value = "***********"
  }
}