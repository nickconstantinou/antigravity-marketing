---
name: vibe-architect
description: Scaffolds high-converting Next.js landing pages using Tailwind CSS based on the positioning matrix.
type: skill
version: 1.3.0
dependencies: [positioning-architect, marketing-logic]
---

# Vibe Architect Skill

## 1. Objective
To transform the `positioning_matrix.json` into a live, high-performance landing page. The goal is "Aggressive Simplicity": zero bloat, maximum resonance.

## 2. Technical Stack Protocols
* **Framework:** Next.js (App Router).
* **Styling:** Tailwind CSS (No custom CSS unless requested).
* **Components:** Use **shadcn/ui** for high-fidelity, "prosumer" feel.
* **Icons:** Lucide-react (keep it minimal).

## 3. The "Vibe-First" Build Process
1.  **Ingest Strategy:** Read `strategy/positioning_matrix.json` to set the tone.
2.  **Scaffold Layout:** Create `app/page.tsx`. Use a "Bento Box" or "Clean Type" layout—avoid 2015-style hero banners.
3.  **Inject Voice:** Pull copy snippets from the `core_hook` and `the_vibe`. 
4.  **Visual Friction Check:** Ensure the "Antagonist" (the problem we're solving) is visually distinct (e.g., darker sections or gritty typography).
5.  **CTA Optimization:** The button must not say "Submit." It must reflect the "Fast-Track" or "New Identity" angle (e.g., "Join the Resistance" or "Fix my [Problem]").

## 4. Automation Rules
* **Responsive by Default:** Every build must be mobile-first.
* **Performance:** Use `next/image` for all assets.
* **Artifact Generation:** Once the code is written, the agent must trigger a `browser_screenshot` to display the render in the Antigravity preview pane.

## 5. The "Vibe Break" Audit
Before declaring the task "Done," the agent must scan its own code for:
* **Generic Placeholders:** If "Lorem Ipsum" is found, the build fails.
* **Stock Images:** If an image is generic, replace it with a high-contrast placeholder or a text-based graphic.
* **Inconsistency:** If the `marketing-logic.md` calls for "15% aggression" but the copy is "nice," refactor the copy immediately.

## 6. Antigravity Command
> "@architect, build the landing page for the [Angle Name] from our matrix. Use shadcn for the UI."
