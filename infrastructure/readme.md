# Infrastructure

This directory contains the Infrastructure as Code (IaC) for the **Urban Mobility Data Platform**.

The infrastructure is separated into three logical layers based on **responsibility and lifecycle**.

## Architecture

```text
                    Urban Mobility Platform
                              │
             ┌────────────────┼────────────────┐
             │                │                │
             ▼                ▼                ▼
       FOUNDATION       DATA PLATFORM      DATABRICKS
             │                │                │
             │                ├── ADF          └── Workspace
             │                └── RBAC
             │
             ├── Resource Group
             ├── ADLS Gen2
             ├── landing
             └── managed
```

## Terraform Structure

```text
terraform/
├── foundation/
├── data-platform/
└── databricks/
```

### Foundation

Persistent Azure infrastructure and storage.

- Resource Group
- ADLS Gen2
- `landing`
- `managed`

### Data Platform

Services used to operate data workloads.

- Azure Data Factory
- Managed Identity
- Azure RBAC

### Databricks

Azure Databricks infrastructure.

- Databricks Workspace

Databricks platform configuration such as Unity Catalog, External Locations,
and Jobs/Policies will be introduced in later iterations.

## Design Approach

The project separates **persistent** and **ephemeral** infrastructure.

The Foundation layer is intended to remain available so that persistent data
can be preserved, while Data Platform and Databricks resources can be created
and destroyed when needed to control development costs.

The Terraform configurations use separate states and share required values
through Terraform outputs.

## Objective

The goal is to build and continuously evolve a **cloud-based Data Platform**
that supports data engineering workloads while demonstrating:

- Infrastructure as Code
- Security and identity
- Data platform architecture
- Governance
- Networking
- Operations
- Cost-aware infrastructure