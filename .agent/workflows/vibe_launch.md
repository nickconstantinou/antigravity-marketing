---
description: Launch a Vibe Marketing campaign from research to deployment.
version: 2.0.0
---

# Vibe Launch Protocol

## 1. Research Phase
1.  **Command:** `@research [topic]`
2.  **Process:** Use `deep_research/SKILL.md` (Workflow) to find the "Bleeding Neck" problem.
3.  **Check:** Does `research/[topic]_brief/SKILL.md` exist?

## 2. Strategy Phase
1.  **Command:** `@positioning`
2.  **Process:** Use `positioning/SKILL.md` (Skill 02) to define the Angle.
3.  **Command:** `@creative`
4.  **Process:** Use `creative-strategist/SKILL.md` (Skill 11) to define the Vibe (Colors, Fonts).

## 3. Execution Phase (The Build)
1.  **Command:** `@design-system`
2.  **Process:** Use `frontend-design/SKILL.md` to translate `creative_brief.json` into `tailwind.config.ts` and `globals.css`.
3.  **Command:** `@visuals`
4.  **Process:** Use `visual-producer/SKILL.md` (Skill 12) to generate assets based on the Vibe.
3.  **Command:** `@copy-direct`
4.  **Process:** Use `direct-response/SKILL.md` to write the headlines using the Positioning Angle.
5.  **Command:** `@architect`
6.  **Process:** Scaffold the page.

## 4. Review Phase
1.  **Command:** `@audit`
2.  **Process:** Use `vibe-critic/SKILL.md` to run the "2AM Bar Test" from `brand-voice/SKILL.md`.
3.  **Command:** `@design-qa`
4.  **Process:** Use `frontend-design/SKILL.md` to analyze visual quality and "Vibe" alignment.
5.  **Refine:** Iterate until Vibe Score > 90.

## 5. Deployment & Distribution
1.  **Manual:** Deploy to Vercel/Netlify.
2.  **Command:** `@atomize`
3.  **Process:** Use `content-atomizer/SKILL.md` to turn the landing page into:
    *   5 Tweets (Thread).
    *   2 LinkedIn Posts.
    *   1 Newsletter (`newsletter/SKILL.md`).
    *   1 Email Sequence (`email-sequences/SKILL.md`).
