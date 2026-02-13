#!/bin/bash
# Initialize Shadcn UI

echo "Initializing Shadcn UI..."
# Use -y to skip prompts, and configure defaults
npx shadcn-ui@latest init -y --style default --color slate --typescript --rsc
