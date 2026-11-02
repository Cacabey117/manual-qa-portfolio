# Sample Bug Reports (Fictional)

All defects below are **hypothetical training examples**, not verified issues.

## BUG-001 — Duplicate order after double-click
- **Severity:** Critical | **Priority:** High
- **Precondition:** Cart has one item; sandbox payment available.
- **Steps:** Checkout → click Pay twice rapidly.
- **Expected:** One payment and one order.
- **Actual (hypothetical):** Two orders created.
- **Evidence:** Attach network trace and order IDs when reproduced.
- **Status:** Example / Not reproduced.

## BUG-002 — Expired coupon accepted
- **Severity:** Medium | **Priority:** Medium
- **Steps:** Add item → enter expired coupon → Apply.
- **Expected:** Coupon rejected.
- **Actual (hypothetical):** Discount applied.
- **Status:** Example / Not reproduced.

## BUG-003 — Inventory not updated
- **Severity:** High | **Priority:** High
- **Steps:** Buy last in-stock unit → refresh product page.
- **Expected:** Stock zero.
- **Actual (hypothetical):** Stock still one.
- **Status:** Example / Not reproduced.

## BUG-004 — Password reset link reusable
- **Severity:** High | **Priority:** High
- **Steps:** Reset password using link → attempt reuse.
- **Expected:** Link invalid after use.
- **Actual (hypothetical):** Link still works.
- **Status:** Example / Not reproduced.

## BUG-005 — Shipping cost excluded from order total
- **Severity:** High | **Priority:** High
- **Steps:** Add item → choose paid shipping → checkout.
- **Expected:** Total includes shipping.
- **Actual (hypothetical):** Total omits shipping.
- **Status:** Example / Not reproduced.
