#!/bin/bash

# Script to add resume and push Portfolio to GitHub

echo "═══════════════════════════════════════════════════════════"
echo "  📦 Portfolio GitHub Deployment Helper"
echo "═══════════════════════════════════════════════════════════"
echo ""

# Check if we're in the right directory
if [ ! -f "index.html" ]; then
    echo "❌ Error: Please run this script from the Portfolio directory"
    echo "   cd /Users/shohrabrustam/Portfolio"
    exit 1
fi

echo "✅ Portfolio directory confirmed!"
echo ""

# Step 1: Check for resume
echo "📄 Step 1: Checking for resume.pdf..."
if [ -f "resume.pdf" ]; then
    echo "✅ resume.pdf found!"
else
    echo "❌ resume.pdf not found"
    echo ""
    echo "Please add your resume first:"
    echo "   cp /path/to/your-resume.pdf resume.pdf"
    echo ""
    read -p "Press Enter when resume.pdf is added, or type 'skip' to continue without it: " skip
    if [ "$skip" != "skip" ] && [ ! -f "resume.pdf" ]; then
        echo "❌ resume.pdf still not found. Exiting..."
        exit 1
    fi
fi
echo ""

# Step 2: Commit resume if it exists and isn't committed
if [ -f "resume.pdf" ]; then
    if git ls-files --error-unmatch resume.pdf > /dev/null 2>&1; then
        echo "✅ resume.pdf already committed"
    else
        echo "📝 Adding resume.pdf to git..."
        git add resume.pdf
        git commit -m "Add resume PDF"
        echo "✅ resume.pdf committed!"
    fi
fi
echo ""

# Step 3: Get GitHub username and repository name
echo "🐙 Step 2: GitHub Repository Setup"
echo ""
read -p "Enter your GitHub username: " github_username
read -p "Enter repository name (default: Portfolio): " repo_name
repo_name=${repo_name:-Portfolio}
echo ""

# Step 4: Check if remote already exists
if git remote get-url origin > /dev/null 2>&1; then
    current_remote=$(git remote get-url origin)
    echo "⚠️  Remote 'origin' already exists:"
    echo "   $current_remote"
    echo ""
    read -p "Do you want to replace it? (yes/no): " replace
    if [ "$replace" = "yes" ]; then
        git remote remove origin
        echo "✅ Removed old remote"
    else
        echo "❌ Keeping existing remote. Exiting..."
        exit 0
    fi
fi

# Step 5: Add remote
echo "🔗 Adding GitHub remote..."
git remote add origin "https://github.com/$github_username/$repo_name.git"
echo "✅ Remote added!"
echo ""

# Step 6: Show status
echo "📊 Current Status:"
echo "   Local branch: $(git branch --show-current)"
echo "   Remote URL: $(git remote get-url origin)"
echo "   Commits ready: $(git log --oneline | wc -l | xargs)"
echo ""

# Step 7: Ask to push
read -p "Ready to push to GitHub? (yes/no): " push_confirm
if [ "$push_confirm" = "yes" ]; then
    echo ""
    echo "🚀 Pushing to GitHub..."
    echo ""
    if git push -u origin main; then
        echo ""
        echo "═══════════════════════════════════════════════════════════"
        echo "  ✅ SUCCESS! Portfolio pushed to GitHub!"
        echo "═══════════════════════════════════════════════════════════"
        echo ""
        echo "📌 Your repository: https://github.com/$github_username/$repo_name"
        echo ""
        echo "🌐 Next Steps:"
        echo ""
        echo "1. Go to: https://github.com/$github_username/$repo_name"
        echo "2. Click 'Settings' tab"
        echo "3. Scroll to 'Pages' in left sidebar"
        echo "4. Under 'Source', select:"
        echo "   - Branch: main"
        echo "   - Folder: / (root)"
        echo "5. Click 'Save'"
        echo "6. Wait 1-2 minutes"
        echo "7. Your live URL will be:"
        echo "   https://$github_username.github.io/$repo_name/"
        echo ""
        echo "═══════════════════════════════════════════════════════════"
    else
        echo ""
        echo "❌ Push failed!"
        echo ""
        echo "Common issues:"
        echo "1. Repository doesn't exist on GitHub"
        echo "   → Create it at: https://github.com/new"
        echo ""
        echo "2. Authentication failed"
        echo "   → You may need to set up SSH keys"
        echo "   → Or use GitHub CLI: gh auth login"
        echo ""
        echo "3. Wrong repository name/username"
        echo "   → Double-check and run script again"
        echo ""
    fi
else
    echo ""
    echo "📋 Manual Push Instructions:"
    echo ""
    echo "   git push -u origin main"
    echo ""
    echo "Then enable GitHub Pages in repository settings."
fi
echo ""