# Urban Mobility Data Platform

An end-to-end cloud data engineering and analytics project built using Azure, Databricks, Terraform, PySpark, Delta Lake and SQL on real urban mobility datasets.

## Purpose

The goal of this repository is to design and build a modern cloud native data platform that ingests, transforms and analyses urban mobility datasets such as Dublin Bikes, public transport and weather data.

This project focuses on Data Platform Engineering, Cloud Engineering and Analytics, while establishing a strong data foundation for future AI driven applications.

## Objectives

- Build cloud infrastructure using Azure and Terraform
- Design and implement end-to-end data engineering pipelines
- Build a Lakehouse architecture using Bronze, Silver and Gold layers
- Transform and process data using PySpark
- Generate analytical insights using SQL
- Integrate multiple urban mobility datasets into a unified platform
- Build an AI-ready data foundation for future expansion

## Architecture

```text
Data Sources
(Dublin Bikes | Bus | Weather)

        |

Azure Storage

        |

Azure Databricks

        |

Bronze -> Silver -> Gold

        |

SQL Analytics
```

## Technology Stack

- Azure
- Azure Storage Account
- Azure Databricks
- Terraform
- PySpark
- Delta Lake
- SQL
- Git & GitHub

## Data Source
[DATA/GOC.IE](https://data.gov.ie/dataset/dublinbikes-api)


## Long-Term Vision

Build a production-style cloud data platform that evolves from data engineering and analytics today into intelligent, AI-enabled data products in the future.

