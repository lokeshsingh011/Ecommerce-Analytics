# E-commerce Analytics Pipeline

A dbt project built as part of the dbt Fundamentals course. This pipeline transforms raw e-commerce data (customers, orders, products) into a denormalized data mart for analytics.

## Structure
- **Staging**: `models/staging/ecommerce/` (cleaned raw data).
- **Marts**: `models/marts/core/` (fact/dimension tables).
- **Tests**: `schema.yml`, `tests/singular/` (generic and singular tests).
- **Sources**: `sources.yml` (raw data with freshness checks).

## Setup
1. Clone the repository: `git clone https://github.com/your-username/ecommerce-analytics.git`.
2. Set up Snowflake with `ECOMMERCE_DB` and load sample data (see `data/`).
3. Configure dbt with Snowflake credentials in `profiles.yml`.
4. Run: `dbt run`, `dbt test`, `dbt source freshness`.

## Key Models
- `dim_customers`: Customer metrics.
- `fct_orders`: Order details.
- `customer_spend_by_category`: Spend by customer and category.

## Data
Sample CSV files are in `data/` (customers.csv, orders.csv, products.csv).
