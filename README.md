# QA API Automation Suite

API testing + SQL data validation suite using Postman/Newman with CI/CD-ready structure.

## Objective
Build a reusable QA suite to validate REST APIs and backend data consistency for enterprise applications.

## Key Coverage
- REST API validation (positive & negative test cases)
- Request/response payload verification
- Status code, headers, and error handling validation
- Basic response-time observation (performance readiness)
- SQL-based backend data validation & reconciliation checks

## Tools & Tech
- Postman Collections
- Newman (CLI execution)
- SQL (data validation queries)
- CI/CD readiness (Jenkins / GitHub Actions – optional)

## Repository Structure
- `collections/` → Postman collections + environments
- `reports/` → Newman execution reports (HTML/JSON)
- `sql/` → sample SQL validation queries
- `docs/` → test strategy, scenarios, and notes

## How to Run (Newman)
1. Export Postman collection JSON into `collections/`
2. Run:
   ```bash
   newman run collections/<collection-name>.json
