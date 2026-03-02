#!/usr/bin/env bash
# Mr.Stack startup banner

CYAN='\033[0;36m'
PURPLE='\033[0;35m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
BOLD='\033[1m'
DIM='\033[2m'
NC='\033[0m'

echo ""
echo -e "${CYAN}${BOLD}"
cat << 'EOF'
  ╔══════════════════════════════════════════╗
  ║                                          ║
  ║   ◆ ◆ ◆  Mr.Stack  ◆ ◆ ◆              ║
  ║   Your AI butler, fully stacked.         ║
  ║                                          ║
  ╚══════════════════════════════════════════╝
EOF
echo -e "${NC}"

# Status info
MEMORY_SIZE=$(du -sh ~/claude-telegram/memory/ 2>/dev/null | cut -f1 || echo "N/A")
JARVIS_STATUS="ON"
if ! grep -q "ENABLE_JARVIS=true" ~/claude-telegram/.env 2>/dev/null; then
    JARVIS_STATUS="OFF"
fi

echo -e "  ${DIM}────────────────────────────────────${NC}"
echo -e "  ${GREEN}◆${NC} Jarvis: ${BOLD}${JARVIS_STATUS}${NC}"
echo -e "  ${PURPLE}◆${NC} Memory: ${BOLD}${MEMORY_SIZE}${NC}"
echo -e "  ${CYAN}◆${NC} Bot:    ${BOLD}Telegram${NC}"
echo -e "  ${DIM}────────────────────────────────────${NC}"
echo ""
