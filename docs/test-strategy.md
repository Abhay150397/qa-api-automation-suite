# Test Strategy (API + Data Validation)

## Scope
This project validates REST APIs and basic backend data consistency checks.

## Test Types Covered
- Functional API testing (positive & negative scenarios)
- Contract/data validation (key fields present, data types)
- Basic performance readiness (response time checks)
- Data integrity validation (SQL reconciliation samples)

## Validation Checklist
### API Validations
- Status codes (200/201/400)
- Response body structure and required fields
- Error handling for invalid inputs
- Response time threshold checks

### Data Validations (SQL)
- Row count checks
- Duplicate checks on key identifiers
- Null checks for mandatory fields
- Source vs Target reconciliation checks (CDC-style)

## Execution
- Postman Collection Runner for regression execution
- Collection JSON stored under `/collections`
- Run results screenshot stored under `/reports`

## Notes
This repository is structured to support CLI execution via Newman and future CI/CD integration.
