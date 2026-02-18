#!/bin/bash
set -e

echo "🚀 Installing PaintFloor BidTakeoff Claw (Browser Version - Once Per Day)..."

mkdir -p ~/.openclaw/skills/paintfloor-bidtakeoff-claw

curl -fsSL https://raw.githubusercontent.com/msmglobal-construction/paintfloor-bidtakeoff-claw/main/SKILL.md \
  -o ~/.openclaw/skills/paintfloor-bidtakeoff-claw/SKILL.md

echo "✅ Installed successfully!"

echo ""
echo "=== NEXT STEPS ==="
echo "1. Install the required skills:"
echo "   clawhub install browser-control"
echo "   clawhub install vision-analyzer"
echo ""
echo "2. Tell your Clawbot:"
echo "   Enable paintfloor-bidtakeoff-claw"
echo "   Run every day at 8:00 AM"
echo ""
echo "3. One-time login:"
echo "   Open Gmail and log in to mike@epoxyfloornewengland.com"
echo ""
echo "Done! It will now check your inbox once per day automatically."
