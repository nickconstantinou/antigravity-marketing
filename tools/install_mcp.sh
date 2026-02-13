#!/bin/bash
# Install MCP Servers for Vibe Marketing

echo "Installing Playwright MCP Server..."
npm install -g @modelcontextprotocol/server-playwright

echo "Installing Glif MCP Server (for images)..."
npm install -g @glif/mcp-server

# Note: Replicate and Perplexity usage depends on their specific MCP implementations
# or direct API calls within the skills. 
# For now, we install the confirmed ones.

echo "MCP Servers Installed."
echo "Ensure you have set your API keys in .env.local"
