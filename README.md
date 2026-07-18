# Urban Mobility Data Platform

An end-to-end Azure data engineering platform that ingests, transforms, and models real world urban mobility data using Azure Data Factory, Azure Databricks, Azure Data Lake Storage Gen2, PySpark, Delta Lake, SQL, and Terraform.

The platform implements a Medallion Architecture (Bronze, Silver, Gold) to deliver scalable, analytics ready datasets for reporting and future data-driven applications.

## Project Overview

This project demonstrates the design and implementation of a modern Azure Lakehouse, combining infrastructure as code, automated data ingestion, distributed data processing, and layered data modelling. The platform integrates urban mobility datasets into a centralized analytics environment using Azure native services.

## Architecture

```text
        Data Sources
             │
             ▼
   Azure Data Factory
             │
             ▼
Azure Data Lake Storage Gen2
             │
             ▼
 Azure Databricks (PySpark)
             │
             ▼
     Bronze → Silver → Gold
             │
             ▼
        SQL Analytics
```

## Engineering Highlights

- Provision cloud infrastructure using Terraform
- Automate data ingestion with Azure Data Factory
- Store and manage data in Azure Data Lake Storage Gen2
- Process and transform data using Azure Databricks and PySpark
- Implement a Medallion Architecture with Bronze, Silver, and Gold layers
- Build curated analytical datasets using Delta Lake and SQL
- Manage source control using Git and GitHub

## Technology Stack

### Cloud
- Microsoft Azure
- Azure Data Factory
- Azure Databricks
- Azure Data Lake Storage Gen2

### Data Engineering
- PySpark
- Delta Lake
- SQL
- Medallion Architecture

### Infrastructure & DevOps
- Terraform
- Git
- GitHub

## Repository Structure

```text
terraform/
adf/
databricks/
├── bronze/
├── silver/
└── gold/
docs/
```

## Data Sources

Current:
- Dublin Bikes API (Data.gov.ie)

Planned:
- Weather API
- Additional urban mobility datasets

## Roadmap

Planned enhancements include CI/CD with GitHub Actions, Power BI reporting, additional data sources, monitoring, and advanced analytics to further evolve the platform.