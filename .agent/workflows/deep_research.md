---
description: Execute a deep-dive market research loop to generate high-signal insights.
version: 2.0.0
---

# Workflow: Deep Research Protocol

**Trigger:** User invokes `@research [topic]` or manual execution.
**Goal:** Produce a comprehensive `research/market_map.json` that informs strategy. **No shallow googling.**

## Phase 1: The Crawl (Broad Sweep)
1.  **Exa.ai Sweep:** Use `exa_search` to find "Bleeding Neck" discussions on Hacker News, X, and Niche Blogs.
2.  **Keyword Mapping:** Invoke `keyword-research.md` (Skill 03) to categorize the intent found.
3.  **Firecrawl Deep-Dive:** For the top 3 pain points identified, use `firecrawl_scrape` to ingest relevant Reddit/Substack threads. 

## Phase 2: The Audit (Competitor Analysis)
1.  **Helper:** For each competitor, visit their landing page.
2.  **Skill:** Use `vibe-critic.md` (Skill 10) to audit their copy.
    *   Do they use "Corporate Speak"?
    *   Is their offer clear?
3.  **Output:** Update `research/market_map.json` with a "Vulnerability Score" for each competitor.

## Phase 3: The Synthesis (Insight Generation)
1.  **Skill:** Invoke `positioning.md` (Skill 02).
2.  **Task:** Map the competitors on the "Blue Ocean Canvas."
3.  **Constraint:** Identify the *missing* angle. What is no one saying?
4.  **Output:** Generate `strategy/positioning_matrix.json`.

## Phase 4: The Report
1.  **Skill:** Invoke `brand-voice.md` (Skill 01) to write the summary.
2.  **Artifact:** Create `research/[topic]_brief.md`.
3.  **Format:**
    *   **The Status Quo:** "Everyone is doing X."
    *   **The Gap:** "But users hate Y."
    *   **The Attack Vector:** "So we will do Z."

**End Condition:** `research/[topic]_brief.md` exists and is cited.
