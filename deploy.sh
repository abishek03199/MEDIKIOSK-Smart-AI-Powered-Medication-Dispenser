#!/bin/bash

# MEDIKIOSK Firebase Hosting & Domain Setup Script
# Owner: Ettore Ashley (ettorashley.works@gmail.com)

echo "🏥 MEDIKIOSK Firebase Hosting Setup"
echo "=================================="

# Check if Firebase CLI is installed
if ! command -v firebase &> /dev/null; then
    echo "❌ Firebase CLI not found. Installing..."
    npm install -g firebase-tools
else
    echo "✅ Firebase CLI is already installed"
fi

# Login to Firebase
echo "🔐 Logging into Firebase..."
firebase login

# Initialize Firebase Hosting
echo "🚀 Initializing Firebase Hosting..."
firebase init hosting

# Build the project
echo "🔨 Building MEDIKIOSK for production..."
npm run build

# Deploy to Firebase
echo "📤 Deploying to Firebase Hosting..."
firebase deploy --only hosting

echo ""
echo "🎉 Deployment Complete!"
echo ""
echo "Your MEDIKIOSK app is now available at:"
echo "🌐 https://your-project-id.web.app"
echo "🌐 https://your-project-id.firebaseapp.com"
echo ""
echo "To add a custom domain:"
echo "1. Go to Firebase Console > Hosting"
echo "2. Click 'Add custom domain'"
echo "3. Follow the DNS setup instructions"
echo ""
echo "Suggested domains for MEDIKIOSK:"
echo "- medikiosk.com"
echo "- medikiosk.app" 
echo "- medikiosk.health"
echo "- medikiosk.io"
echo ""
echo "Happy hosting! 🚀"
