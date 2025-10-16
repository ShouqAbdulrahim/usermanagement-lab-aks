variable "resource_group_name" {
  description = "The name of the resource group for the disk"
  type        = string
}

variable "location" {
  description = "Azure region where the disk will be created"
  type        = string
}

variable "managed_disk_name" {
  description = "The name of the managed disk"
  type        = string
}

variable "disk_size_gb" {
  description = "Disk size in GB"
  type        = number
  default     = 32
}

variable "storage_account_type" {
  description = "Storage type (Standard_LRS, Premium_LRS, etc.)"
  type        = string
  default     = "Standard_LRS"
}

variable "aks_resource_group_name" {
  description = "Resource group of your AKS cluster"
  type        = string
}

variable "aks_cluster_name" {
  description = "AKS cluster name"
  type        = string
}
