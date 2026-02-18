---
name: paintfloor-bidtakeoff-claw
description: Browser-based painting & flooring bid takeoff agent. Checks Gmail once per day, downloads PDFs, uses vision to extract scope/systems/sq footage, logs to Google Sheet.
---

# PaintFloor BidTakeoff Claw (Browser Version - Once Per Day)

## Purpose
Uses browser control to check your Gmail **once per day** for new bid/RFP emails with PDF attachments, analyzes the plans with vision, does accurate painting + flooring takeoff, and saves everything to Google Sheet.

## Required base skills (install first)
- browser-control
- vision-analyzer

## One-time setup (do this once)
1. Tell Clawbot: `Open Gmail and log in to mike@epoxyfloornewengland.com`
2. Log in manually when Chrome opens (cookies saved forever)
3. Create Google Sheet named **"Bid Takeoffs"** with these exact columns (row 1):
