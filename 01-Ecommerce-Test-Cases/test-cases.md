# E-Commerce Manual Test Cases

**System under test:** hypothetical online store. **Execution status:** Not Run.

| ID | Area | Scenario | Expected result |
|---|---|---|---|
| EC-001 | Login | Valid credentials | User is authenticated |
| EC-002 | Login | Incorrect password | Generic error, no login |
| EC-003 | Login | Empty required fields | Field validation displayed |
| EC-004 | Login | Locked account | Access denied with safe message |
| EC-005 | Registration | Existing email | Duplicate account prevented |
| EC-006 | Password reset | Valid reset link | Password updated, old password rejected |
| EC-007 | Search | Exact product name | Matching products displayed |
| EC-008 | Search | No matches | Empty-state message displayed |
| EC-009 | Filter | Price range | Only qualifying products displayed |
| EC-010 | Sort | Price ascending | Products sorted correctly |
| EC-011 | Product | Out-of-stock item | Purchase disabled |
| EC-012 | Cart | Add in-stock item | Correct item and price shown |
| EC-013 | Cart | Increase quantity | Totals update accurately |
| EC-014 | Cart | Remove item | Cart and total update |
| EC-015 | Cart | Quantity above stock | Excess quantity rejected |
| EC-016 | Coupon | Valid coupon | Correct discount applied |
| EC-017 | Coupon | Expired coupon | Rejected with message |
| EC-018 | Checkout | Valid shipping address | Address accepted |
| EC-019 | Checkout | Missing required address | Validation prevents continuation |
| EC-020 | Checkout | Shipping fee | Fee included in total |
| EC-021 | Payment | Successful sandbox payment | Exactly one paid order created |
| EC-022 | Payment | Declined sandbox payment | No paid order created |
| EC-023 | Payment | Double-click Pay | Duplicate charge/order prevented |
| EC-024 | Payment | Network interruption | Retry/reconciliation handled safely |
| EC-025 | Order | Confirmation | Correct order ID and totals shown |
| EC-026 | Order | Confirmation email | Correct recipient and order details |
| EC-027 | Inventory | Successful purchase | Stock decreases once |
| EC-028 | Inventory | Cancelled order | Stock restored per business rule |
| EC-029 | Account | Unauthorized order access | Access denied |
| EC-030 | Regression | Coupon + shipping + payment | Final amount consistent end-to-end |

## Execution template
- **Preconditions:** Test account, seeded product inventory, sandbox payment provider.
- **Steps:** Record precise navigation and test data for each case before execution.
- **Actual result / evidence / environment:** To be completed during real test execution.
- **Outcome:** Not Run.
