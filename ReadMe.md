# 📋 README: Firebase OTP Authentication – SwiftUI Template 📱

## 👋 Welcome to the Firebase OTP Authentication Template!

This project is a **ready-to-use SwiftUI template** for **phone number authentication** using **Firebase OTP**.  
However, some **sensitive API credentials have been removed** for security reasons. You **must configure Firebase** before running this project.

---

## 🚀 Steps to Get Started

### 1️⃣ Create a Firebase Project
1. Go to the [Firebase Console](https://console.firebase.google.com/).  
2. Click **“Create Project”**, name it (e.g., `Firebase OTP App`), and **Continue**.  
3. Enable **Google Analytics** (optional) and complete the setup.  

---

### 2️⃣ Add iOS App to Firebase
1. In Firebase Console, click **“Add App” → iOS**.  
2. Enter your **App Bundle ID** (found in Xcode → Target → General).  
3. Click **Register App**.  
4. **Download `GoogleService-Info.plist`**.  
5. **Move this file into the Xcode project’s root folder** (where `Info.plist` is located).  

⚠️ **Important:**  
- **DO NOT** commit `GoogleService-Info.plist` to GitHub.  
- **DO NOT** share API keys publicly.  

---

### 3️⃣ Install Firebase Dependencies
1. In Xcode: `File → Add Package Dependencies`  
2. Enter: [https://github.com/firebase/firebase-ios-sdk](https://github.com/firebase/firebase-ios-sdk)  
3. Install `FirebaseCore` & `FirebaseAuth`  

---

### 4️⃣ Configure Apple Push Notifications (APNs)

⚠️ Firebase OTP on iOS **requires push notifications!**

#### 1. Generate an APNs Key
- Go to the [Apple Developer Console](https://developer.apple.com/account/).  
- Select **Certificates, Identifiers & Profiles → Keys**.  
- Click **“+” (Create Key)** → Name it `Firebase APNs Key`.  
- Enable **Apple Push Notifications (APNs)**.  
- Click **Continue → Register → Download .p8 key**.  

#### 2. Upload APNs Key to Firebase
- Open [Firebase Console](https://console.firebase.google.com/).  
- Go to **Project Settings → Cloud Messaging**.  
- Under **APNs authentication key**, click **Upload Key**.  
- Upload your `.p8` file and enter:
  - **Key ID** (from Apple Developer).  
  - **Team ID** (from Apple Developer under Membership).  
- Click **Save**.  

---

### 5️⃣ Update Info.plist

Since API keys were removed, you need to **add your own custom URL scheme** from Firebase.  

1. Run the app in Xcode.  
   Firebase will throw an error like:  
