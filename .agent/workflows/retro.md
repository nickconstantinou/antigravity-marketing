# Workflow: The Echo Loop (Retrospective)

**Trigger:** `@retro`
**Goal:** Analyze market feedback and adjust the strategy.

1.  **Input:** User provides performance data (or Agent scrapes it).
    - *Example:* "Twitter thread got 100k views, LP converted at 0.5%."

2.  **Analysis:** `@orchestrator` diagnoses the "Vibe Drift."
    - *Constraint:* Compare results against `offer_stack.json` and `positioning_matrix.json`.

3.  **Action:** Update `launch_ticket.md` with a "Vibe Drift Report."
    - *Drift Type:* "Traffic High / Conversion Low" -> Problem is the Offer or Page Friction.
    - *Drift Type:* "Traffic Low" -> Problem is the Hook or Distribution.

4.  **Prescription:** Recommend next step.
    - *e.g.,* "Run `@offer-architect` to add a Risk Reversal."
