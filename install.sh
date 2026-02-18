#!/bin/bash
set -e

echo "🚀 Installing PaintFloor BidTakeoff Claw..."

mkdir -p ~/.openclaw/skills/paintfloor-bidtakeoff-claw

curl -fsSL https://raw.githubusercontent.com/msmglobal-construction/paintfloor-bidtakeoff-claw/main/SKILL.md \
  -o ~/.openclaw/skills/paintfloor-bidtakeoff-claw/SKILL.md

echo "✅ Skill installed to ~/.openclaw/skills/paintfloor-bidtakeoff-claw"

echo ""
echo "Next steps for your client:"
echo "1. Make sure these base skills are installed:"
echo "   clawhub install google-workspace"
echo "   clawhub install pdf-vision   # or any vision/pdf skill you prefer"
echo "2. Create Google Sheet 'Bid Takeoffs' with columns below (I'll send template link)"
echo "3. Tell your Clawbot: 'Enable paintfloor-bidtakeoff-claw and run it every 20 minutes'"
echo "4. Done – it will auto-process new bids forever."

echo "📊 Recommended Google Sheet columns (exact names):"
echo "Bid Received | Client | Project Name | Paint Walls SqFt | Paint Ceilings SqFt | Paint System Specified | Floor SqFt | Flooring System Specified | Notes | Original PDF Link | Email Link"
