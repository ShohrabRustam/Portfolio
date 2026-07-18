#!/bin/bash

# Test if the portfolio URL works after renaming

echo "🔍 Testing portfolio URL..."
echo ""

LOWERCASE_URL="https://shohrabrustam.github.io/portfolio/"
UPPERCASE_URL="https://shohrabrustam.github.io/Portfolio/"

echo "Testing lowercase URL (NEW):"
LOWERCASE_STATUS=$(curl -s -o /dev/null -w "%{http_code}" "$LOWERCASE_URL")
echo "   $LOWERCASE_URL"
echo "   Status: $LOWERCASE_STATUS"
echo ""

echo "Testing uppercase URL (OLD):"
UPPERCASE_STATUS=$(curl -s -o /dev/null -w "%{http_code}" "$UPPERCASE_URL")
echo "   $UPPERCASE_URL"
echo "   Status: $UPPERCASE_STATUS"
echo ""

if [ "$LOWERCASE_STATUS" = "200" ]; then
    echo "✅ SUCCESS! Your portfolio is live at:"
    echo "🔗 $LOWERCASE_URL"
    echo ""
    echo "Opening in browser..."
    open "$LOWERCASE_URL" 2>/dev/null || echo "Visit the URL above"
else
    echo "⏳ Wait 1-2 minutes for GitHub Pages to update"
    echo "   Then run this script again to verify"
fi
