# SETUP_PROTOCOL.md - High-Fidelity Infrastructure Boot

> [!IMPORTANT]
> This document is designed for **Coding Agents** (AI) to ensure zero-friction environment initialization.

## 1. Environment Readiness (The Pre-Flight)
Before running the installer, ensure the workspace isn't "empty." The `shadcn` CLI requires a detectable framework.

- [x] **Check Node Version**: Minimum `v20.0.0` is now supported (v22.0.0+ recommended for stability).
- [x] **Framework Foundation**: Foundation files (`tsconfig.json`, `tailwind.config.ts`, `lib/utils.ts`) are now pre-included in the template.

## 2. Execution Protocol (The One-Click Install)
Run the following commands in order.

```bash
# 1. Grant execution rights
chmod +x tools/forge_init.sh

# 2. Run the Forge Ignition
./tools/forge_init.sh
```

## 3. Post-Install Configuration
After the script completes, the agent MUST perform these manual hydration steps:

### A. Environment Liquidity
- [ ] Fill in API keys in `.env.local` (copied from `.env.example`).

### B. MCP Synapse Configuration
- [ ] Sync the `mcp_config.json` with the agent's runtime host.
- [ ] **Verified Packages**: Ensure these package names are used for `npx` calls:
  - `@glifxyz/glif-mcp-server@latest`
  - `replicate-mcp@latest`
  - `exa-mcp-server@latest`
  - `firecrawl-mcp@latest`

## 4. Troubleshooting (The "3-Strike" Rule)
If installation fails:
1. **Strike 1**: Verify `node_modules` was fully populated (`npm install`).
2. **Strike 2**: Check for conflicting CLI versions (`shadcn@latest`).
3. **Strike 3**: HALT and output the full error stack to the user.

---
*Follow this protocol exactly. Deviation leads to context drift and build hallucination.*
