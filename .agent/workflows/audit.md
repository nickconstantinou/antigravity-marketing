# Workflow: Vibe Audit

**Trigger:** `@audit [url]`
**Goal:** The "2AM Bar Test" for live deployments.

1.  **Input:** Staging URL (from `@deploy-staging`).

2.  **Process:** `@vibe-critic` scans the URL.
    - **Check 1:** "Scarecrow Test" (Is the antagonist clear?)
    - **Check 2:** "Wallet Test" (Is the Offer visible?)
    - **Check 3:** "Mobile Friction" (Are buttons thumb-friendly?)

3.  **Output:** Pass/Fail + specific "Vibe Tweaks."
    - *Fail:* "The H1 is too corporate. Rewrite."
    - *Pass:* "Score 92/100. Ready for `@deploy-prod`."
