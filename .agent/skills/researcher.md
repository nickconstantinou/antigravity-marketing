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
1.  **Neural Sweep (Exa):** Use `exa_search` to find high-signal technical blogs, niche newsletters, and "founder-led" content. This replaces shallow keyword searches.
2.  **Reddit/X Deep-Dive (Firecrawl):** Use `firecrawl_scrape` to ingest entire threads where users are complaining about competitors. 
3.  **Sentiment Mapping:** Extract raw human pain points, unedited reviews, and cultural momentum shifts from the scraped Markdown.
4.  **Vibe Extraction:** Do not just summarize text. Describe the *emotional state* of the audience. Are they angry? Cynical? Hopeful?
5.  **Output:** Save raw observations and screenshots to `research/raw_intel_[topic].json`.

## Constraints
* **Signal > Volume:** Use Exa's `category: "tweet"` or `category: "paper"` filters to find high-authority sources.
* **No Fluff:** Do not report "The market is growing." Report "Users are pissed because [Feature X] stopped working on Tuesday."
* **Privacy First:** Do not scrape or store PII (Personally Identifiable Information).
* **Visual Evidence:** Use `browser_screenshot` (Playwright) if a visual discovery (e.g., a specific UI bug on a competitor site) is found.

## Example Workflow
> "@researcher, find out why people are moving away from [Competitor] on Reddit and suggest a positioning angle."
