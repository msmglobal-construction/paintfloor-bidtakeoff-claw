---
name: paintfloor-bidtakeoff-claw
description: Autonomous painting & flooring takeoff agent for construction bids. Scans Gmail, analyzes PDFs, extracts scopes & systems, calculates sq footage, logs to Google Sheet.
---

# PaintFloor BidTakeoff Claw

## Purpose
Automatically process new bid request emails containing PDF plans. Specialize in painting and flooring takeoffs for painting/flooring contractors.

## Required base skills (must be installed first)
- google-workspace (Gmail + Google Sheets)
- Any PDF/vision skill (pdf-vision, vision-analyzer, or built-in multimodal PDF support)

## One-time client setup
1. OAuth Google Workspace for read/send Gmail + edit Sheets
2. Create Google Sheet named **"Bid Takeoffs"** (share with the service account if needed) with these **exact** column headers:
   Bid Received, Client, Project Name, Paint Walls SqFt, Paint Ceilings SqFt, Paint System Specified, Floor SqFt, Flooring System Specified, Notes, Original PDF Link, Email Link

## Autonomous Mode (recommended)
Run every 15–30 minutes via heartbeat/scheduler with prompt: "Process new bid requests"

## Manual trigger
"Run bid takeoff now" or "Check latest bids"

## Exact Workflow (follow every time, no deviations)
1. Search Gmail (unread only):
   query: (bid OR RFP OR proposal OR quote OR "invitation to bid" OR "plans attached") has:attachment filename:pdf

2. For every new matching email:
   - Download all PDF attachments to ~/Bids/Incoming/[timestamp]_[client].pdf
   - Mark email as read + star it
   - Use full vision/OCR on every page of every PDF
   - Locate Scope of Work, Painting, Flooring, Finishes, Interior/Exterior sections, plans/drawings
   - Extract:
     • Client name, project name, bid date
     • All painting areas (walls, ceilings, trim, doors, soffits, etc.) → total sq ft per category + grand total
     • Exact paint system specified (brand, product, sheen, coats, e.g. "Sherwin-Williams Emerald Interior Semi-Gloss, 2 coats")
     • All flooring areas (rooms, hallways, stairs, total sq ft)
     • Exact flooring system specified (LVP, tile, carpet, epoxy, hardwood, glue-down, floating, thickness, etc.)
   - If scale/dimensions are present → calculate accurately. If unclear → note "Manual verification needed on X sq ft"
   - Never guess systems or numbers – only report what is explicitly written or measurable
   - Append ONE new row to the Google Sheet "Bid Takeoffs"
   - Save original PDFs organized
   - Send me (the user) a short Telegram/WhatsApp summary: "New bid processed – Client: X – Paint: 4,820 sq ft – Floor: 2,150 sq ft – Systems extracted"

## Guardrails
- Only process PDFs from construction bids (ignore marketing PDFs)
- High accuracy priority over speed
- If vision confidence low on any number → flag it clearly in Notes column
- Keep all files in ~/Bids/ for audit trail

## Success criteria
Every processed bid must have clean row in spreadsheet within 2 minutes of detection.
