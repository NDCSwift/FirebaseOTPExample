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

Copy the value (`app-1-XXXXXX`).  

2. Update `Info.plist` in Xcode:  

xml
<key>CFBundleURLTypes</key>
<array>
 <dict>
     <key>CFBundleURLSchemes</key>
     <array>
         <string>app-1-XXXXXX</string>
     </array>
 </dict>
</array>

👉 Replace app-1-XXXXXX with your actual Firebase-generated URL scheme.

---
### 6️⃣ Run the App on a Real Device

⚠️ OTP Authentication DOES NOT work on simulators!
	•	Connect your iPhone via USB.
	•	Enable Developer Mode (Settings → Privacy & Security → Developer Mode).
	•	Run the app from Xcode on your real device.

⸻

✅ What’s Already Set Up in This Template?
	•	Complete Firebase Phone Authentication flow (Phone input, OTP verification, User login).
	•	SwiftUI login screen with OTP input.
	•	Push notification handling via AppDelegate.swift.
	•	Pre-configured FirebaseAuth API calls.

  

