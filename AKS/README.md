# Platform Azure
Terraform repository for managing Platform resource on Azure
## So we need to specify this in terraform lock providers:
```

root@node1:~/PlatformAKS# tree .
.
├── 01-main.tf
├── 02-kv.tf
├── 03-variables.tf
├── 04-datasources.tf
├── 05-resource-group.tf
├── 06-aks-cluster.tf
├── 07-virtual-network.tf
├── 08-storage-account.tf
├── 09-acr.tf
├── 10-storage-classes.tf
├── 11-output.tf
└── README.md

0 directories, 12 files

```

## Initialize your configuration
Initialize the Terraform configuration.
```
# terraform init

Initializing the backend...

Initializing provider plugins...
- Reusing previous version of hashicorp/random from the dependency lock file
- Reusing previous version of hashicorp/helm from the dependency lock file
- Reusing previous version of hashicorp/azurerm from the dependency lock file
....
```
```
# terraform fmt
01-main.tf
02-kv.tf
03-variables.tf
04-datasources.tf
05-resource-group.tf
06-aks-cluster.tf
07-virtual-network.tf
08-storage-account.tf
09-acr.tf
10-storage-classes.tf
11-output.tf
```
Validate your configuration.
```
# terraform validate
Success! The configuration is valid.
```
## Create a plan
```
# terraform plan

```
## The terraform apply command executes the actions proposed in a Terraform plan.

```
# terraform apply

```