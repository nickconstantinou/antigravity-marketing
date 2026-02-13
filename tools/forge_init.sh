#!/bin/bash
# Antigravity Marketing Forge - Initialization Script
# Version: 1.0.0
# Author: Zero-G Architect

set -e

# --- Visual Setup ---
RED='\033[0;31m'
GREEN='\033[0;32m'
BLUE='\033[0;34m'
PURPLE='\033[0;35m'
CYAN='\033[0;36m'
NC='\033[0m' # No Color

echo -e "${PURPLE}"
cat << "EOF"
    ___         __  _                                  __       
   /   |  ____ / /_(_)___ __________ __   _(_) /___ __/ /___  __
  / /| | / __ \ __/ / __ `/ ___/ __ `/ | / / / __/ / / / __ \/ /_
 / ___ |/ / / / /_/ / /_/ / /  / /_/ /| |/ / / /_/ /_/ / /_/ / __/
/_/  |_/_/ /_/\__/_/\__, /_/   \__,_/ |___/_/\__/\__, /_.___/\__/ 
                   /____/                       /____/            
                 --- VIBE MARKETING FORGE ---
EOF
echo -e "${NC}"

echo -e "${CYAN}[1/4] Checking System Requirements...${NC}"
if ! command -v node &> /dev/null; then
    echo -e "${RED}Error: Node.js is not installed. Please install v20+.${NC}"
    exit 1
fi
echo -e "${GREEN}✓ Node.js found: $(node -v)${NC}"

echo -e "${CYAN}[2/4] Installing Marketing Dependencies...${NC}"
npm install --quiet
echo -e "${GREEN}✓ Base dependencies installed.${NC}"

echo -e "${CYAN}[3/4] Ignition: Deploying MCP Servers...${NC}"
# Official MCPs
npm install -g @modelcontextprotocol/server-playwright \
               @glif/mcp-server \
               @modelcontextprotocol/server-replicate \
               @modelcontextprotocol/server-exa \
               @modelcontextprotocol/server-firecrawl --quiet
echo -e "${GREEN}✓ Glif, Replicate, Playwright, Exa, and Firecrawl MCPs ready.${NC}"

echo -e "${CYAN}[4/4] Aesthetics: Scaffolding UI...${NC}"
# Use the new shadcn CLI instead of deprecated shadcn-ui
npx shadcn@latest init -y --style default --color slate --typescript --rsc
echo -e "${GREEN}✓ Shadcn UI initialized.${NC}"

echo -e "\n${PURPLE}==================================================${NC}"
echo -e "${GREEN}FORGE INITIALIZATION COMPLETE${NC}"
echo -e "${PURPLE}==================================================${NC}"
echo -e "Next Steps:"
echo -e "1. Edit ${BLUE}.agent/rules/marketing-logic.md${NC} to define your voice."
echo -e "2. Run ${BLUE}@launch-vibe \"Your Product\"${NC} to start your first campaign."
echo -e "3. Check ${BLUE}README.md${NC} for full capability docs."
echo -e "${PURPLE}==================================================${NC}\n"
