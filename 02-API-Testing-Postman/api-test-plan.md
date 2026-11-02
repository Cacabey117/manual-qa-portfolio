# REST API Test Plan

**Illustrative API:** /api/v1; endpoint availability and schema must be adapted to a real test service.

| ID | Method | Endpoint | Validation |
|---|---|---|---|
| API-01 | GET | /products | 200, JSON list |
| API-02 | GET | /products/1 | 200, expected ID |
| API-03 | GET | /products/999999 | 404 for missing item |
| API-04 | POST | /auth/login | Valid login returns expected auth response |
| API-05 | POST | /auth/login | Invalid credentials rejected |
| API-06 | GET | /orders | Missing token rejected (401) |
| API-07 | POST | /orders | Valid request creates order (201) |
| API-08 | POST | /orders | Invalid quantity rejected (400/422 per spec) |
| API-09 | PATCH | /cart/items/1 | Quantity update validated |
| API-10 | DELETE | /cart/items/1 | Item removed according to API contract |

## Example Postman tests
```javascript
pm.test("Status is 200", () => pm.response.to.have.status(200));
pm.test("Response is JSON", () => pm.response.to.be.json);
pm.test("Response time under 2 seconds", () => pm.expect(pm.response.responseTime).to.be.below(2000));
```

Validate authorization, required fields, error messages, schema, idempotency and database state where applicable. **Not Run** — requires a configured API environment.
