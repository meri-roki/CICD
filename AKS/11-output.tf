# Print SSH Private Key Passphrase for Linux VMs that retrived from Azure keyvault
output "ssh_privatekey-passphrase" {
  value = "***********".value
  sensitive = "***********"
}