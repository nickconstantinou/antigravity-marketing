---
description: Launch a Vibe Marketing campaign from research to deployment (V2.0).
version: 2.0.0
---

# Vibe Launch Protocol (V2.0)

**Prerequisite:** A "Launch Project" must exist in `launches/active/[project_name]/`.

## 1. Research Phase (The Source)
1.  **Command:** `@research [topic]`
2.  **Process:** Use `researcher/SKILL.md`.
3.  **Output:** Save to `artifacts/research/raw_intel.json`.
4.  **Vibe Guardian:** Inject `artifacts/research/raw_intel.json` into `launch_ticket.md`.

## 2. Strategy Phase
1.  **Command:** `@positioning` (Skill 02).
2.  **Command:** `@creative` (Skill 11).
3.  **Output:** `artifacts/strategy/positioning_matrix.json` & `artifacts/strategy/creative_brief.json`.

## 3. Offer Phase (The Grand Slam)
1.  **Command:** `@offer-architect` (Skill: offer-architect).
2.  **Input:** `artifacts/research/raw_intel.json`.
3.  **Output:** `artifacts/strategy/offer_stack.json`.

## 4. Execution Phase (Parallel Build)
**Context:** ALL agents must read `artifacts/research/raw_intel.json` AND `artifacts/strategy/offer_stack.json`.
1.  **Thread A (Copy):** `@copy-direct` saves to `artifacts/copy/headlines.md`.
2.  **Thread B (Visuals):** `@visuals` saves to `artifacts/assets/`.
3.  **Thread C (Design):** `@design-system` saves to `artifacts/design/`.
4.  **Convergence:** `@architect` scaffolds the Next.js app using artifacts.

## 5. Audit & Deploy
1.  **Command:** `@deploy-staging` (Skill: deploy-manager).
2.  **Output:** Staging URL.
3.  **Command:** `@audit [staging_url]`.
4.  **Refine:** If Vibe Score < 90, loops back.

## 6. Distribution (The Megaphone)
1.  **Command:** `@deploy-prod`.
2.  **Command:** `@atomize`.
3.  **Output:** Save posts to `artifacts/dist/social_posts.md`.

## 7. The Echo Loop (Feedback)
1.  **Command:** `@retro`.
2.  **Action:** Updates `launch_ticket.md` with "Vibe Drift" analysis.
