# Firebase Hosting & Custom Domain Setup for MEDIKIOSK

## Overview
Firebase Hosting provides fast and secure hosting for your MEDIKIOSK web app with the option to use a custom domain.

## Step 1: Initialize Firebase Hosting

### Install Firebase CLI
```bash
npm install -g firebase-tools
```

### Login to Firebase
```bash
firebase login
```

### Initialize Firebase in your project
```bash
firebase init hosting
```

During initialization:
- Select your Firebase project (medikiosk)
- Set public directory: `dist` (Vite build output)
- Configure as single-page app: `Yes`
- Set up automatic builds: `No` (for now)

## Step 2: Configure Build for Hosting

### Update package.json scripts
```json
{
  "scripts": {
    "build": "vite build",
    "preview": "vite preview",
    "deploy": "npm run build && firebase deploy --only hosting"
  }
}
```

### Build and deploy
```bash
npm run build
firebase deploy --only hosting
```

## Step 3: Custom Domain Options

### Option A: Use Firebase Subdomain (Free)
Your app will be available at:
- `https://medikiosk.web.app`
- `https://medikiosk.firebaseapp.com`

### Option B: Custom Domain (Requires Domain Purchase)

#### Available Domain Suggestions for MEDIKIOSK:
- `medikiosk.com`
- `medikiosk.app`
- `medikiosk.io`
- `medikiosk.health`
- `medikiosk.care`
- `smart-medikiosk.com`
- `medikiosk-dispenser.com`

#### Domain Registrars:
- **Google Domains** (now Squarespace)
- **Namecheap**
- **GoDaddy**
- **Cloudflare**
- **Domain.com**

## Step 4: Connect Custom Domain to Firebase

### In Firebase Console:
1. Go to **Hosting** section
2. Click **Add custom domain**
3. Enter your domain (e.g., `medikiosk.com`)
4. Follow verification steps:
   - Add TXT record to your domain's DNS
   - Add A records pointing to Firebase

### DNS Configuration Example:
```
Type: A
Name: @
Value: 151.101.1.195

Type: A  
Name: @
Value: 151.101.65.195

Type: CNAME
Name: www
Value: medikiosk.com
```

## Step 5: SSL Certificate
Firebase automatically provides SSL certificates for custom domains.

## Step 6: Domain Suggestions & Availability Check

### Check availability at:
- [Namecheap Domain Search](https://www.namecheap.com/domains/)
- [Google Domains](https://domains.google/)
- [Cloudflare Registrar](https://www.cloudflare.com/products/registrar/)

### Recommended domains for MEDIKIOSK:
1. **medikiosk.app** - Modern, tech-focused
2. **medikiosk.health** - Health-specific TLD
3. **medikiosk.io** - Popular for tech startups
4. **medikiosk.com** - Traditional, professional

## Step 7: Environment-Specific Domains

### Development
- Local: `http://localhost:8080`
- Preview: `https://medikiosk-dev.web.app`

### Production
- Firebase: `https://medikiosk.web.app`
- Custom: `https://medikiosk.com`

## Security & Performance

### Recommended Settings:
- Enable HTTPS redirect
- Set up security headers
- Configure caching rules
- Enable compression

### firebase.json configuration:
```json
{
  "hosting": {
    "public": "dist",
    "ignore": [
      "firebase.json",
      "**/.*",
      "**/node_modules/**"
    ],
    "rewrites": [
      {
        "source": "**",
        "destination": "/index.html"
      }
    ],
    "headers": [
      {
        "source": "**/*.@(js|css)",
        "headers": [
          {
            "key": "Cache-Control",
            "value": "max-age=31536000"
          }
        ]
      }
    ]
  }
}
```

## Cost Estimates

### Firebase Hosting (Spark Plan - Free):
- 10 GB storage
- 1 GB transfer per month
- Custom domain: Free

### Domain Costs (Annual):
- `.com`: $10-15/year
- `.app`: $15-20/year  
- `.io`: $35-50/year
- `.health`: $80-100/year

## Project Owner Information
- **Owner**: Ettore Ashley
- **Email**: ettorashley.works@gmail.com
- **Project**: MEDIKIOSK - Smart AI-Powered Medication Dispenser

## Support
- [Firebase Hosting Documentation](https://firebase.google.com/docs/hosting)
- [Custom Domain Setup](https://firebase.google.com/docs/hosting/custom-domain)
