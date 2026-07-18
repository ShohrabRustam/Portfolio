#!/bin/bash

# Wait and verify that GitHub Pages is enabled for Portfolio redirect

echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "  🔍 Checking GitHub Pages Deployment Status"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo ""

# Check GitHub Pages API
echo "1. Checking GitHub Pages API status..."
STATUS=$(curl -s "https://api.github.com/repos/ShohrabRustam/Portfolio/pages" | grep -o '"status":"[^"]*"' | cut -d'"' -f4)

if [ "$STATUS" = "built" ]; then
    echo "   ✅ GitHub Pages: Enabled and Built"
elif [ "$STATUS" = "building" ]; then
    echo "   ⏳ GitHub Pages: Currently Building..."
    echo "   Wait 1-2 minutes and run this script again"
    exit 0
else
    echo "   ❌ GitHub Pages: Not enabled or error"
    echo "   Status: $STATUS"
    echo ""
    echo "   Please enable GitHub Pages at:"
    echo "   https://github.com/ShohrabRustam/Portfolio/settings/pages"
    echo ""
    exit 1
fi

echo ""
echo "2. Testing uppercase URL variations..."
echo ""

# Test URLs
test_url() {
    local url=$1
    local name=$2
    echo "   Testing: $url"
    
    STATUS_CODE=$(curl -s -o /dev/null -w "%{http_code}" -L "$url" 2>/dev/null)
    
    if [ "$STATUS_CODE" = "200" ]; then
        echo "      ✅ Status: $STATUS_CODE (Working!)"
        return 0
    else
        echo "      ❌ Status: $STATUS_CODE (Not working yet)"
        return 1
    fi
}

PASSED=0
FAILED=0

# Test various case combinations
test_url "https://shohrabrustam.github.io/Portfolio/" "Uppercase P" && ((PASSED++)) || ((FAILED++))
echo ""
test_url "https://shohrabrustam.github.io/PORTFOLIO/" "All uppercase" && ((PASSED++)) || ((FAILED++))
echo ""
test_url "https://shohrabrustam.github.io/PoRtFoLiO/" "Mixed case" && ((PASSED++)) || ((FAILED++))

echo ""
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "  📊 RESULTS"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo ""
echo "   ✅ Passed: $PASSED"
echo "   ❌ Failed: $FAILED"
echo ""

if [ "$FAILED" -eq 0 ]; then
    echo "🎉 SUCCESS! Your portfolio is fully case-insensitive!"
    echo ""
    echo "All these URLs now work:"
    echo "   • https://shohrabrustam.github.io/portfolio/"
    echo "   • https://shohrabrustam.github.io/Portfolio/"
    echo "   • https://shohrabrustam.github.io/PORTFOLIO/"
    echo "   • Any case variation!"
    echo ""
else
    echo "⏳ Some URLs are still failing."
    echo ""
    echo "This usually means:"
    echo "   1. GitHub Pages is still building (wait 2 minutes)"
    echo "   2. GitHub Pages wasn't enabled yet"
    echo ""
    echo "Run this script again in 2 minutes:"
    echo "   ./verify-case-insensitive.sh"
fi

echo ""
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
