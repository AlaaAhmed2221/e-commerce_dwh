# 🚚 Olist E-Commerce End-to-End Data Warehouse & Analytics Project

## 📌 Executive Summary
This project demonstrates an **End-to-End Data Warehousing (ELT) Solution** built over the Brazilian Olist E-Commerce public dataset. The goal is to ingest raw transactional data, transform and standardize it through structured layers, and serve it via a dimensional Star Schema optimized for analytics and BI dashboards.

The architecture follows the **Medallion Architecture Architecture (Bronze ➡️ Silver ➡️ Gold)** using **SQL Server**:

* **Bronze Layer**: Raw CSV data ingested into SQL Server staging tables.
* **Silver Layer**: Cleaned, standardized, and enriched tables with standardized formatting and data quality flags.
* **Gold Layer**: Dimensional Model (Star / Galaxy Schema) composed of Fact and Dimension Views with Surrogate Keys for business reporting.

---

## 🏗 Data Architecture & Pipeline

1. **Bronze**: Raw schema preserving initial types and structures.
2. **Silver**: 
   * Whitespace removal via `TRIM()`.
   * Standardized text cases (`UPPER` for states, `LOWER` for cities and status values).
   * Missing value replacements (`n/a` for text, `0` for numeric metrics).
   * Derived metrics (`actual_delivery_days`, `estimated_delivery_days`, `product_volume_cm3`).
   * Quality flags (`is_valid_timeline`, `is_late_delivery`, `has_valid_dimensions`).
3. **Gold**:
   * **Dimension Tables**: `dim_customers`, `dim_products`, `dim_sellers`, `dim_date`.
   * **Fact Tables**: `fact_sales`, `fact_payments`, `fact_reviews`.

---

🧪 Data Quality & Validation Checks
The pipeline incorporates automated checks executed on the Silver Layer:

Uniqueness & Primary Key Validation: Ensures no duplicated business keys.

Referential Integrity: Verifies orphaned records between orders, items, products, and customers.

Business Rule Validation: Checks logical timestamps (order_approved_at >= order_purchase_timestamp).

Row Count Reconciliation: Validates 1:1 row counts between Bronze and Silver tables.
