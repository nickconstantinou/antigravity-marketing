# Antigravity Marketing Forge 🛠️

Welcome to the **Vibe Marketing Forge**. This is an agentic workspace designed for high-velocity, high-resonance marketing execution.

## 🚀 Quick Start (The Forge Initialization)

### 1. Clone & Enter
```bash
git clone https://github.com/your-username/antigravity-marketing.git
cd antigravity-marketing
```

### 2. Run the Forge Installer
To set up the full environment (Dependencies, MCP Servers, and UI), run the branded installer:

```bash
chmod +x tools/forge_init.sh
./tools/forge_init.sh
```

### 🧠 Post-Installation Setup
1. **Configure MCPs**: Copy `mcp_config.json.example` to your agent's configuration location.
2. **API Keys**: Set your `EXA_API_KEY`, `FIRECRAWL_API_KEY`, `GLIF_API_KEY`, and `REPLICATE_API_TOKEN` in `.env.local`.
3. **Constitution**: Review [.agent/rules/marketing-logic.md](.agent/rules/marketing-logic.md) to align the AI's "vibe" with your brand.

---

## 🏗️ System Architecture

The Forge is powered by **15 specialized Skills** and **Autonomous Workflows**.

### 1. Strategy & Research (The Intelligence Layer)
*   [Researcher](.agent/skills/researcher.md): Neural sweep via **Exa** and deep-scraping via **Firecrawl**.
*   [Keyword Strategist](.agent/skills/keyword-research.md): Uncovers 3 AM search intent using the 6-Circles method.
*   [Positioning](.agent/skills/positioning.md): Builds the competitive "Blue Ocean" matrix.
*   [Creative Director](.agent/skills/creative-strategist.md): Defines the visual DNA (Neo-Brutalist, Lux-Minimal).

### 2. Execution (The Build Layer)
*   [Vibe Architect](.agent/skills/vibe-architect.md): Scaffolds Next.js landing pages using **Shadcn UI**.
*   [Visual Producer](.agent/skills/visual-producer.md): Generates assets via **Glif** and **Replicate**.
*   [Conversion Copy](.agent/skills/direct-response.md): High-pressure PAS/AIDA copywriting.
*   [SEO Content](.agent/skills/seo-content.md): Pattern-breaking educational content.
*   [Vibe Critic](.agent/skills/vibe-critic.md): Ruthless audit of artifacts against the Brand Constitution.

### 3. Distribution (The Growth Layer)
*   [Content Atomizer](.agent/skills/content-atomizer.md): One asset -> 15+ native social posts.
*   [Email Sequences](.agent/skills/email-sequences.md): Behavioral drip campaigns.
*   [Newsletter](.agent/skills/newsletter.md): High-open-rate broadcast broadcasts.
*   [Lead Magnet](.agent/skills/lead-magnet.md): Value-exchange asset structure.

---

## 🕹️ Mission Control

Trigger the full campaign loop with a single command:

```bash
@launch-vibe "Your Awesome Product"
```

For advanced commands and multi-agent orchestration details, see [AGENTS.md](./AGENTS.md).

---

## ⚖️ Strategic Assessment
For a deep dive into why we use MCP over direct APIs and our supplemental tool choices, see [assessments.md](./assessments.md).
