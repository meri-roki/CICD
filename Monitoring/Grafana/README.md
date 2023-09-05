# Deploying to Kubernetes

## Apply the Terraform configuration
```
$ terraform init
$ terraform apply
```
Access Grafana
Once the apply command has completed, your Grafana service should be up and running on your Kubernetes cluster. You can access it by visiting the external IP of the LoadBalancer created by the service.
