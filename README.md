# Antigravity Marketing Forge 🛠️

Welcome to the **Vibe Marketing Forge**. This is an agentic workspace designed for high-velocity, high-resonance marketing execution.

## 🚀 Quick Start (The Forge Initialization)

### 1. Clone & Enter
```bash
git clone https://github.com/nickconstantinou/antigravity-marketing.git
cd antigravity-marketing
```

### 2. Run the Forge Installer
To set up the full environment (Dependencies, MCP Servers, and UI), run the branded installer. 

> [!IMPORTANT]
> If you are an **AI Agent**, first read [SETUP_PROTOCOL/SKILL.md](./SETUP_PROTOCOL/SKILL.md) for pre-flight requirements and verified package patterns.

```bash
chmod +x tools/forge_init.sh
./tools/forge_init.sh
```

### 🧠 Post-Installation Setup
1. **Configure MCPs**: Copy `mcp_config.json.example` to your agent's configuration location.
2. **API Keys**: Set your `EXA_API_KEY`, `FIRECRAWL_API_KEY`, `GLIF_API_KEY`, and `REPLICATE_API_TOKEN` in `.env.local`.
3. **Deployment**: Install Vercel CLI (`npm i -g vercel`) and add `VERCEL_TOKEN` to `.env.local` for automated staging.
4. **Constitution**: Review [.agent/rules/marketing-logic/SKILL.md](.agent/rules/marketing-logic/SKILL.md) to align the AI's "vibe" with your brand.

---

## 🏗️ System Architecture

The Forge is powered by **15 specialized Skills** and **Autonomous Workflows**.

### 1. Strategy & Research (The Intelligence Layer)
*   [Researcher](.agent/skills/researcher/SKILL.md): Neural sweep via **Exa** and deep-scraping via **Firecrawl**.
*   [Keyword Strategist](.agent/skills/keyword-research/SKILL.md): Uncovers 3 AM search intent using the 6-Circles method.
*   [Positioning](.agent/skills/positioning/SKILL.md): Builds the competitive "Blue Ocean" matrix.
*   [Creative Director](.agent/skills/creative-strategist/SKILL.md): Defines the visual DNA (Neo-Brutalist, Lux-Minimal).

### 2. Execution (The Build Layer)
*   [Vibe Architect](.agent/skills/vibe-architect/SKILL.md): Scaffolds Next.js landing pages using **Shadcn UI**.
*   [Visual Producer](.agent/skills/visual-producer/SKILL.md): Generates assets via **Glif** and **Replicate**.
*   [Conversion Copy](.agent/skills/direct-response/SKILL.md): High-pressure PAS/AIDA copywriting.
*   [SEO Content](.agent/skills/seo-content/SKILL.md): Pattern-breaking educational content.
*   [Vibe Critic](.agent/skills/vibe-critic/SKILL.md): Ruthless audit of artifacts against the Brand Constitution.

### 3. Distribution (The Growth Layer)
*   [Content Atomizer](.agent/skills/content-atomizer/SKILL.md): One asset -> 15+ native social posts.
*   [Email Sequences](.agent/skills/email-sequences/SKILL.md): Behavioral drip campaigns.
*   [Newsletter](.agent/skills/newsletter/SKILL.md): High-open-rate broadcast broadcasts.
*   [Lead Magnet](.agent/skills/lead-magnet/SKILL.md): Value-exchange asset structure.

---

## 🕹️ Mission Control (Vibe Launch V2)

The Vibe Engine is now managed via **Launch Tickets**. This ensures every campaign has a "Single Source of Truth" and a feedback loop.

### Phase 1: Ideation
Initialize a new idea in the backlog.
```bash
@create-launch "My Awesome Project"
# Creates launches/backlog/YYYY-MM-DD-my-project.md
```

### Phase 2: Liftoff
Move the idea from Backlog -> Active and trigger the Vibe Pipeline.
```bash
@start-launch "launches/backlog/YYYY-MM-DD-my-project.md"
# Triggers Research -> Strategy -> Build -> Staging
```

### Phase 3: The Echo Loop
After deployment, close the loop to log results and archive the ticket.
```bash
@close-launch "launches/active/YYYY-MM-DD-my-project.md"
# Archives to launches/complete/ and updates MISSION_LOG.md
```

For advanced commands and multi-agent orchestration details, see [AGENTS/SKILL.md](./AGENTS/SKILL.md).

## 🚀 Deployment & Maintenance

## 🚀 Deployment & Maintenance Protocol (Day 2 Operations)

### 1. Web Assets (Landing Pages)
**Status:** ✅ Fully Automated via `deploy-manager`.

*   **Initial Deploy:**
    1.  `@deploy-staging` -> Pushes to Vercel Preview.
    2.  `@audit [url]` -> Runs the "2AM Bar Test."
    3.  `@deploy-prod` -> Promotes to Production (requires Vibe Score > 90).

*   **Maintenance:**
    1.  Request changes via Agent: "Update header to say X."
    2.  Agent modifies `app/page.tsx`.
    3.  Run `@deploy-prod` to ship instantly.

### 2. Email Assets (Newsletters/Sequences)
**Status:** ⚠️ Semi-Automated (Generation Only).

*   **The Handoff:**
    1.  `@offer-architect` + `@copy-direct` generate `offer_stack.json` and email copy.
    2.  Locate `launches/active/[project]/artifacts/copy/email_sequence.md`.
    3.  **Manual Action:** Copy/Paste into your ESP (ConvertKit, Beehiiv, etc.).

### 3. Social Assets (The Atomizer)
**Status:** ⚠️ Semi-Automated (Generation Only).

*   **The Handoff:**
    1.  `@atomize` reads the Landing Page and generates 15+ posts.
    2.  Locate `launches/active/[project]/artifacts/dist/social_posts.md`.
    3.  **Manual Action:** Copy/Paste into scheduler (Typefully, Buffer). Use provided Midjourney prompts for visuals.

### 4. The Echo Loop (Maintenance Mode)
**Frequency:** Weekly.

1.  **Input:** "Twitter thread got 10k views, but Landing Page conversion is 0.5%."
2.  **Command:** `@retro`
3.  **Action:** Orchestrator analyzes "Vibe Drift" and recommends fixes (e.g., "Run `@offer-architect` to increase Guarantee").
4.  **Loop:** System updates artifacts -> You run `@deploy-prod`.

---


