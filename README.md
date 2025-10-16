# 🚀 Lab 8 — Deploy a Three-Tier App on Azure Kubernetes Service (AKS)

This lab demonstrates how to containerize and deploy a **three-tier application** (UI → API → Database) on **Azure Kubernetes Service (AKS)** using Kubernetes manifests.

---

## 🧱 Architecture Overview

**Stack:**
- 🗄 **PostgreSQL** → Database (internal)
- ⚙️ **Node.js API** → Backend (public)
- 🎨 **NGINX** → Frontend (public)

**Flow:**  
`UI (NGINX)` → `API (Node.js)` → `DB (PostgreSQL)`

**Namespace:** `user-management`

---

## ⚙️ Prerequisites

✅ Azure Kubernetes Service (AKS) cluster  
✅ `kubectl` connected to the cluster  
✅ Docker Hub or Azure Container Registry account  
✅ Git + CLI tools installed  

---

## 🧩 1. Clone the Repository

```bash
git clone https://github.com/saurabhd2106/usermanagement-lab-ih.git
cd usermanagement-lab-ih
