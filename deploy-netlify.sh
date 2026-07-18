#!/bin/bash

# Netlify CLI Deployment Script
# Run this if drag-and-drop doesn't work

echo "================================================"
echo "  Deploying Portfolio to Netlify"
echo "================================================"

# Check if Netlify CLI is installed
if ! command -v netlify &> /dev/null
then
    echo "❌ Netlify CLI not found. Installing..."
    npm install -g netlify-cli
    echo "✅ Netlify CLI installed!"
fi

# Navigate to portfolio directory
cd /Users/shohrabrustam/Leaning/System-Design/portfolio

echo ""
echo "📦 Deploying your portfolio..."
echo ""

# Deploy to Netlify
netlify deploy --prod

echo ""
echo "================================================"
echo "  ✅ Deployment Complete!"
echo "================================================"
echo ""
echo "Copy your live URL from above and add it to your resume!"
echo ""