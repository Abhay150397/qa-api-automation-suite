# Cloud QE Checklist (API + Microservices)

## Functional
- Status codes and error handling (2xx/4xx/5xx)
- Schema validation and required fields
- Negative scenarios and invalid inputs

## Reliability
- Timeout handling
- Retry/idempotency behavior
- Rate limiting expectations (429)

## Performance
- Baseline latency checks
- Response time thresholds

## Security Awareness
- Sensitive data not exposed in logs
- Basic encryption/secure transport expectations (HTTPS)
