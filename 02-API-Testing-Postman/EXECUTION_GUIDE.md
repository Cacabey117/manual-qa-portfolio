# Executing the JSONPlaceholder API collection

## Environment
- Public test service: https://jsonplaceholder.typicode.com/
- Tool: Postman (desktop or web with agent)
- Collection: `JSONPlaceholder.postman_collection.json`
- Variable: `baseUrl` (provided in collection)

## Steps
1. Open Postman and select **Import**.
2. Import the JSON collection from this repository.
3. Open the collection and run each request, or use **Run collection**.
4. Check each request's **Test Results** and response body.
5. Record date/time, environment, request name, Pass/Fail, response code and evidence in `../04-Test-Execution/test-execution-log.csv`.
6. Save screenshots of Postman Test Results in `../04-Test-Execution/evidence/` after execution (do not include tokens, secrets or personal data).
7. For a genuine failure, create a defect report using `../05-Bug-Reports/BUG_TEMPLATE.md`.

## Important limitations
- JSONPlaceholder is a **fake REST API**. POST returns a simulated creation response; changes are not persisted.
- These tests are independent from the fictional e-commerce cases in this portfolio.
- A collection uploaded to GitHub is **not** proof that its tests have been run.
- Current execution status: **Not Run**. Replace only after personally verifying actual results.
