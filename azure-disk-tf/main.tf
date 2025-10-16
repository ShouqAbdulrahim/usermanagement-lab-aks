resource "azurerm_resource_group" "rg" {
  name     = var.resource_group_name
  location = var.location
}

# Get AKS cluster identity
data "azurerm_kubernetes_cluster" "aks" {
  name                = var.aks_cluster_name
  resource_group_name = var.aks_resource_group_name
}

# Grant the kubelet identity Contributor access to attach disks


# Create the Azure Managed Disk
resource "azurerm_managed_disk" "disk" {
  name                 = var.managed_disk_name
  location             = var.location
  resource_group_name  = var.resource_group_name
  storage_account_type = var.storage_account_type
  create_option        = "Empty"
  disk_size_gb         = var.disk_size_gb
}

output "disk_resource_id" {
  value = azurerm_managed_disk.disk.id
}
