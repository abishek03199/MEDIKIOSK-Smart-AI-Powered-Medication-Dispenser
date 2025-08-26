# Firebase Setup Guide for MEDIKIOSK

## Project Information
- **Project Name**: MEDIKIOSK
- **Owner Email**: ettorashley.works@gmail.com
- **Description**: Smart AI-Powered Medication Dispenser

## Step-by-Step Firebase Setup

### 1. Create Firebase Project
1. Go to [Firebase Console](https://console.firebase.google.com)
2. Click "Create a project"
3. Enter project name: `medikiosk` (or `medikiosk-smart-dispenser`)
4. Choose whether to enable Google Analytics (recommended)
5. Select your Google Analytics account or create a new one
6. Click "Create project"

### 2. Enable Authentication
1. In Firebase Console, go to **Authentication** > **Sign-in method**
2. Enable **Email/Password** provider
3. Optional: Enable other providers (Google, Facebook, etc.)
4. Go to **Authentication** > **Users** to manage users later

### 3. Set up Firestore Database
1. Go to **Firestore Database**
2. Click "Create database"
3. Choose **Start in production mode** (we'll add security rules)
4. Select a location (choose closest to your users)
5. Click "Done"

### 4. Configure Cloud Storage
1. Go to **Storage**
2. Click "Get started"
3. Review security rules, then click "Next"
4. Choose same location as Firestore
5. Click "Done"

### 5. Get Firebase Configuration
1. Go to **Project Settings** (gear icon)
2. Scroll down to "Your apps"
3. Click "Add app" > Web app icon
4. App nickname: `MEDIKIOSK Web App`
5. Check "Also set up Firebase Hosting" (optional)
6. Copy the configuration object

### 6. Set up Environment Variables
1. Copy `.env.example` to `.env`
2. Fill in your Firebase configuration values
3. Never commit `.env` to version control

### 7. Apply Security Rules
Copy the rules from `firebase-security-rules.txt` to:
- **Firestore Database** > **Rules**
- **Storage** > **Rules**

### 8. Create First Admin User
After deploying, create your admin account:
1. Register with email: `ettorashley.works@gmail.com`
2. Manually update user role to 'admin' in Firestore
3. Or use the admin creation function in your app

### 9. Test the Connection
Run your app and verify:
- Authentication works
- Database operations work
- File uploads work
- Security rules are enforced

## Firebase Services Used

### Authentication
- Email/Password authentication
- User profiles with roles (admin/user)
- Secure session management

### Firestore Database
- **users**: User profiles and roles
- **medications**: Medicine inventory
- **prescriptions**: Patient prescriptions
- **dispensingLogs**: Medication dispensing history

### Cloud Storage
- **prescriptions/{id}/**: Prescription images
- **medications/{id}/**: Medication images

### Security
- Role-based access control
- Data validation rules
- Secure file upload permissions

## Recommended Firebase Plan
- **Spark Plan (Free)**: Good for development and testing
- **Blaze Plan (Pay-as-you-go)**: Recommended for production

## Support
For Firebase-specific issues:
- [Firebase Documentation](https://firebase.google.com/docs)
- [Firebase Support](https://firebase.google.com/support)

## Project Owner
**Ettore Ashley** - ettorashley.works@gmail.com
