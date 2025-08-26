# MEDIKIOSK Firebase Hosting & Domain Setup Script (PowerShell)
# Owner: Ettore Ashley (ettorashley.works@gmail.com)

Write-Host "🏥 MEDIKIOSK Firebase Hosting Setup" -ForegroundColor Cyan
Write-Host "==================================" -ForegroundColor Cyan

# Check if Firebase CLI is installed
try {
    firebase --version | Out-Null
    Write-Host "✅ Firebase CLI is already installed" -ForegroundColor Green
} catch {
    Write-Host "❌ Firebase CLI not found. Installing..." -ForegroundColor Red
    npm install -g firebase-tools
}

# Login to Firebase
Write-Host "🔐 Logging into Firebase..." -ForegroundColor Yellow
firebase login

# Initialize Firebase Hosting
Write-Host "🚀 Initializing Firebase Hosting..." -ForegroundColor Yellow
firebase init hosting

# Build the project
Write-Host "🔨 Building MEDIKIOSK for production..." -ForegroundColor Yellow
npm run build

# Deploy to Firebase
Write-Host "📤 Deploying to Firebase Hosting..." -ForegroundColor Yellow
firebase deploy --only hosting

Write-Host ""
Write-Host "🎉 Deployment Complete!" -ForegroundColor Green
Write-Host ""
Write-Host "Your MEDIKIOSK app is now available at:" -ForegroundColor Cyan
Write-Host "🌐 https://your-project-id.web.app" -ForegroundColor Blue
Write-Host "🌐 https://your-project-id.firebaseapp.com" -ForegroundColor Blue
Write-Host ""
Write-Host "To add a custom domain:" -ForegroundColor Yellow
Write-Host "1. Go to Firebase Console > Hosting"
Write-Host "2. Click 'Add custom domain'"
Write-Host "3. Follow the DNS setup instructions"
Write-Host ""
Write-Host "Suggested domains for MEDIKIOSK:" -ForegroundColor Magenta
Write-Host "- medikiosk.com"
Write-Host "- medikiosk.app"
Write-Host "- medikiosk.health"
Write-Host "- medikiosk.io"
Write-Host ""
Write-Host "Happy hosting! 🚀" -ForegroundColor Green
