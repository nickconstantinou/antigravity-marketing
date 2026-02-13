# Vibe Marketing Template

Welcome to your new **Vibe Marketing Engine**. 

This is not just a Next.js template. It is an **Agentic Workspace** designed to help you execute high-level marketing campaigns with the help of autonomous AI agents.

## Getting Started

1.  **Install Dependencies & Tools:**
    Run the following commands to set up the full environment (Dependencies, MCP Servers, Shadcn UI):
    ```bash
    npm install
    ./tools/install_mcp.sh
    ./tools/setup_shadcn.sh
    ```

2.  **Configure Environment:**
    *   Copy `.env.example` to `.env.local`:
        ```bash
        cp .env.example .env.local
        ```
    *   **Perplexity API Key:** Required for `keyword-research` (Get at [perplexity.ai](https://www.perplexity.ai/)).
    *   **Glif API Key:** Required for `visual-producer` (Get at [glif.app](https://glif.app/)).
    *   **Replicate API Token:** Required for high-end generation (Get at [replicate.com](https://replicate.com/)).

3.  **Configure Your Brand:**
    *   Edit `.agent/rules/marketing-logic.md` to define your "Constitution" (Banned words, Vibe settings).
    *   Edit `.agent/skills/brand-voice.md` to fine-tune your voice.

3.  **Launch Your First Campaign:**
    Open your terminal and type:
    ```bash
    @launch-vibe "My Awesome Product"
    ```

## Mission Control (`AGENTS.md`)
Refer to [AGENTS.md](./AGENTS.md) for the full list of commands and workflows available to your agents.

## Capabilities
*   **Research:** Crawls Reddit/X to find real user pain points.
*   **Strategy:** Generates psychological hooks based on 8 proven frameworks.
*   **build:** Scaffolds high-converting landing pages using Shadcn UI.
*   **Critique:** Audits everything against your Brand Constitution.
