---
name: paintfloor-bidtakeoff-claw
description: Browser-based painting & flooring bid takeoff agent. Checks Gmail once per day at 8 AM using Playwright.
---

# PaintFloor BidTakeoff Claw (Browser Version - Once Per Day)

## Purpose
Uses Chrome on your VPS (via Playwright) to check your Gmail **once per day** for new bid emails with PDF attachments, reads the plans with vision, does accurate painting + flooring takeoff, and saves everything to Google Sheet.

## Required base skills
- playwright-mcp
- vision-analyzer

## One-time setup (do once)
1. Tell your Clawbot: `Open Gmail and log in to mike@epoxyfloornewengland.com`
2. Log in when Chrome opens (cookies saved forever)
3. Create Google Sheet named **"Bid Takeoffs"** with these exact column headers:
   Bid Received | Client | Project Name | Paint Walls SqFt | Paint Ceilings SqFt | Paint System Specified | Floor SqFt | Flooring System Specified | Notes | Original PDF Link | Email Link

## How to activate (once per day)
Tell your Clawbot:
Enable paintfloor-bidtakeoff-claw
Run every day at 8:00 AM

## What it does every day at 8 AM
- Opens Chrome → Gmail (already logged in)
- Searches for new bids with PDF attachments
- Downloads PDFs
- Uses vision to extract painting & flooring scope + exact systems + sq footage
- Adds one clean row to your Google Sheet
- Marks emails read + stars them
- Sends you a short summary

## Guardrails
- Only real construction bid PDFs
- Never guesses numbers or systems
- Saves original PDFs in ~/Bids/Incoming/
