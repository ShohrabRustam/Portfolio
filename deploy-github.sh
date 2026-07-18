#!/bin/bash

# GitHub Pages Deployment Script

echo "================================================"
echo "  Deploying Portfolio to GitHub Pages"
echo "================================================"

cd /Users/shohrabrustam/Leaning/System-Design/portfolio

# Initialize git if not already done
if [ ! -d ".git" ]; then
    echo "🔧 Initializing Git repository..."
    git init
    git add .
    git commit -m "Initial commit: Portfolio website"
    echo "✅ Git initialized!"
fi

echo ""
echo "📋 Next Steps:"
echo ""
echo "1. Create a new repository on GitHub:"
echo "   → Go to: https://github.com/new"
echo "   → Name: 'portfolio' or 'shohrab-rustam-portfolio'"
echo "   → Make it Public"
echo "   → Don't add README (we have files already)"
echo ""
echo "2. Run these commands (replace YOUR_USERNAME):"
echo ""
echo "   git remote add origin https://github.com/YOUR_USERNAME/portfolio.git"
echo "   git branch -M main"
echo "   git push -u origin main"
echo ""
echo "3. Enable GitHub Pages:"
echo "   → Go to repository Settings"
echo "   → Scroll to 'Pages' section"
echo "   → Source: Select 'main' branch"
echo "   → Click 'Save'"
echo ""
echo "4. Your site will be live at:"
echo "   → https://YOUR_USERNAME.github.io/portfolio/"
echo ""
echo "================================================"