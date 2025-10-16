# 🚀 Lab 8-10 — Deploy a Three-Tier App on Azure Kubernetes Service (AKS)

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



# 💾 Lab 10 — Persist Your Data with PV & PVC on AKS

This lab extends the previous AKS three-tier application (Postgres → API → Frontend + Ingress) by adding **data persistence** using a **PersistentVolume (PV)** and **PersistentVolumeClaim (PVC)** backed by an **Azure Managed Disk**.

---

## 🎯 Objective
Right now, if the Postgres Pod dies, all data is lost.  
In this lab, you’ll attach durable storage so data survives Pod restarts and redeployments.

---

## 🧰 Requirements

✅ AKS Cluster with `kubectl` access  
✅ Terraform + Azure CLI installed  
✅ Helm (Ingress controller already installed from previous lab)  
✅ Namespace: `user-management`  
✅ Working three-tier app (Postgres, API, Frontend, Ingress)

---

## 🗂️ 0) (Optional) Clean Start

If you want to start fresh:
```bash
kubectl delete all --all -n user-management --ignore-not-found
kubectl get ns user-management || kubectl create ns user-management
