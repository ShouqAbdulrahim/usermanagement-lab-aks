# RG للقرص (اختاري اسم جديد أو استخدمي موجود)
resource_group_name       = "rg-user-management"
location                  = "westeurope"
managed_disk_name         = "postgres-pv-disk"
disk_size_gb              = 10
storage_account_type      = "Standard_LRS"

# قيم الـ AKS الموجودة عندك
aks_resource_group_name   = "devops2-shouqds-d-aks-rg"
aks_cluster_name          = "devops2-shouqds-d-aks-aks-cluster"