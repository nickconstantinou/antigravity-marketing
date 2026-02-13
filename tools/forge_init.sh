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
# Official/Verified MCPs
npm install -g @glifxyz/glif-mcp-server \
               replicate-mcp \
               exa-mcp-server \
               firecrawl-mcp --quiet || echo -e "${RED}Warning: Some MCP servers could not be installed globally. This is expected if they are not on the public registry. They can still be run via npx.${NC}"
echo -e "${GREEN}✓ MCP server check complete.${NC}"

echo -e "${CYAN}[4/4] Aesthetics: Scaffolding UI...${NC}"
# Pre-flight: Next.js & TypeScript config
if [ ! -f "next.config.mjs" ] && [ ! -f "next.config.js" ]; then
    echo -e "${BLUE}Scaffolding minimal Next.js config...${NC}"
    echo "/** @type {import('next').NextConfig} */" > next.config.mjs
    echo "const nextConfig = {};" >> next.config.mjs
    echo "export default nextConfig;" >> next.config.mjs
fi

if [ ! -f "tsconfig.json" ]; then
    echo -e "${BLUE}Scaffolding tsconfig.json...${NC}"
    cat > tsconfig.json <<EOF
{
  "compilerOptions": {
    "target": "ES2017",
    "lib": ["dom", "dom.iterable", "esnext"],
    "allowJs": true,
    "skipLibCheck": true,
    "strict": true,
    "noEmit": true,
    "esModuleInterop": true,
    "module": "esnext",
    "moduleResolution": "bundler",
    "resolveJsonModule": true,
    "isolatedModules": true,
    "jsx": "preserve",
    "incremental": true,
    "plugins": [{ "name": "next" }],
    "paths": { "@/*": ["./*"] }
  },
  "include": ["next-env.d.ts", "**/*.ts", "**/*.tsx", ".next/types/**/*.ts"],
  "exclude": ["node_modules"]
}
EOF
fi

if [ ! -f "tailwind.config.ts" ]; then
    echo -e "${BLUE}Scaffolding tailwind.config.ts...${NC}"
    cat > tailwind.config.ts <<EOF
import type { Config } from "tailwindcss";
export default {
  content: ["./app/**/*.{js,ts,jsx,tsx,mdx}", "./components/**/*.{js,ts,jsx,tsx,mdx}"],
  theme: { extend: {} },
  plugins: [],
} satisfies Config;
EOF
fi

if [ ! -f "postcss.config.mjs" ]; then
    echo -e "${BLUE}Scaffolding postcss.config.mjs...${NC}"
    echo "export default { plugins: { tailwindcss: {}, autoprefixer: {} } };" > postcss.config.mjs
fi

if [ ! -d "lib" ]; then
    mkdir -p lib
    cat > lib/utils.ts <<EOF
import { clsx, type ClassValue } from "clsx"
import { twMerge } from "tailwind-merge"
export function cn(...inputs: ClassValue[]) {
  return twMerge(clsx(inputs))
}
EOF
fi

if [ ! -d "app" ]; then
    mkdir -p app
    echo -e "${BLUE}Creating app directory...${NC}"
fi

# Use the new shadcn CLI defaults - skip interactive and force if needed
echo -e "${CYAN}Initializing Shadcn UI...${NC}"
npx shadcn@latest init -d || {
    echo -e "${RED}Warning: shadcn init -d failed. Attempting manual dependency injection...${NC}"
    npm install clsx tailwind-merge tailwindcss-animate class-variance-authority lucide-react --force
}
echo -e "${GREEN}✓ UI Layer Foundation ready.${NC}"

if [ ! -f ".env.local" ]; then
    echo -e "${BLUE}Creating .env.local from example...${NC}"
    cp .env.example .env.local 2>/dev/null || touch .env.local
fi

echo -e "\n${PURPLE}==================================================${NC}"
echo -e "${GREEN}FORGE INITIALIZATION COMPLETE${NC}"
echo -e "${PURPLE}==================================================${NC}"
echo -e "Next Steps:"
echo -e "1. Fill in your API keys in ${BLUE}.env.local${NC}"
echo -e "2. Edit ${BLUE}.agent/rules/marketing-logic.md${NC} to define your voice."
echo -e "3. Run ${BLUE}@launch-vibe \"Your Product\"${NC} to start your first campaign."
echo -e "${PURPLE}==================================================${NC}\n"
