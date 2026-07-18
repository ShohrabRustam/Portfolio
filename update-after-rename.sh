#!/bin/bash

# Update local git remote after renaming repository on GitHub
# Run this AFTER you rename Portfolio -> portfolio on GitHub

echo "🔄 Updating local git remote..."

# Update remote URL to lowercase 'portfolio'
git remote set-url origin https://github.com/ShohrabRustam/portfolio.git

echo ""
echo "✅ Remote URL updated!"
echo ""
echo "Verifying..."
git remote -v
echo ""
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "✅ Setup complete!"
echo ""
echo "Your new portfolio URL:"
echo "🔗 https://shohrabrustam.github.io/portfolio/"
echo ""
echo "Note: Wait 1-2 minutes for GitHub Pages to update"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
