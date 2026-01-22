# CI/CD Notes (Jenkins/GitHub Actions)

## Goal
Run API regression tests automatically on every commit.

## Newman Command
newman run "collections/ReqRes API Test Suite.postman_collection.json"

## Outputs
- CLI logs in pipeline console
- HTML report stored under `/reports`

## Jenkins High-Level Steps
1. Checkout repo
2. Install Node + Newman
3. Run Newman command
4. Archive reports as artifacts
