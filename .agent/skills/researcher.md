---
name: market-researcher
description: Conducts deep-dive research into market gaps, Reddit sentiment, and competitor 'vibe' analysis using Playwright.
type: skill
version: 1.1.0
---

# Market Researcher Skill

## Goal
To move past surface-level search results and identify "The 6 Circles of Relevance." The agent must find raw human pain points, unedited reviews, and cultural momentum shifts.

## Instructions
1.  **Reddit Deep-Dive:** Use `browser_navigate` to visit subreddits related to the niche. Search for "Is it just me or," "Hate it when," and "Alternative to [Competitor]."
2.  **X (Twitter) Sentiment:** Search for recent viral threads in the niche. Capture screenshots of high-engagement replies to understand the current "lexicon."
3.  **The 6 Circles Map:** Based on the research, populate a `research/market_map.json` following these circles:
    * *Circle 1:* Direct Problem (The core "itch").
    * *Circle 2:* Immediate Alternatives (The current "scratch").
    * *Circle 6:* Tangential Interests (What else are these people buying?).
4.  **Vibe Extraction:** Do not just summarize text. Describe the *emotional state* of the audience. Are they angry? Cynical? Hopeful?

## Constraints
* **No Fluff:** Do not report "The market is growing." Report "Users are pissed because [Feature X] stopped working on Tuesday."
* **Privacy First:** Do not scrape or store PII (Personally Identifiable Information).
* **Visual Evidence:** Always take a `browser_screenshot` of the most critical discovery for the human to review in the Artifacts tab.

## Example Workflow
> "@researcher, find out why people are moving away from [Competitor] on Reddit and suggest a positioning angle."
