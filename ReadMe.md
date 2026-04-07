# 🔐 Firebase OTP Authentication
A SwiftUI template for phone number authentication using Firebase OTP — ready to clone, configure, and run.

---

## 🤔 What this is
This project demonstrates how to implement phone number sign-in with Firebase Authentication in SwiftUI. It shows the full OTP flow from entering a phone number to verifying the one-time code. All sensitive API credentials are removed so you can safely use this as a starting template.

## ✅ Why you'd use it
- **Firebase Auth integration** — Wires up FirebaseAuth with a SwiftUI login screen out of the box
- **OTP verification flow** — Handles phone input, code sending, and code confirmation end-to-end
- **Push notification setup** — Includes AppDelegate configuration for APNs, which Firebase OTP requires on iOS

## 📺 Watch on YouTube
[![Watch on YouTube](https://img.shields.io/badge/YouTube-Watch%20the%20Tutorial-red?style=for-the-badge&logo=youtube)](https://youtu.be/yPtWZU5PxSg)

> This project was built for the [NoahDoesCoding YouTube channel](https://www.youtube.com/@NoahDoesCoding97).

---

## 🚀 Getting Started

### 1. Clone the Repo
```bash
git clone https://github.com/NDCSwift/FirebaseOTPExample.git
cd FirebaseOTPExample
```

### 2. Open in Xcode
Double-click `FirebaseOTPExample2.xcodeproj`.

### 3. Set Your Development Team
In Xcode: **TARGET → Signing & Capabilities → Team** — select your team.

### 4. Update the Bundle Identifier
Change `com.example.MyApp` to a unique reverse-domain ID (e.g., `com.yourname.FirebaseOTP`).

### 5. Add Firebase
1. Create a project at [console.firebase.google.com](https://console.firebase.google.com), add an iOS app, and download `GoogleService-Info.plist`.
2. Drag `GoogleService-Info.plist` into the Xcode project root (next to `Info.plist`). **Do not commit this file.**
3. In Xcode: **File → Add Package Dependencies** → `https://github.com/firebase/firebase-ios-sdk` → install `FirebaseCore` & `FirebaseAuth`.

### 6. Configure APNs
Firebase OTP requires push notifications. Upload an APNs key (`.p8`) in **Firebase Console → Project Settings → Cloud Messaging**.

### 7. Run on a Real Device
OTP does **not** work on the Simulator. Connect a real iPhone and run from Xcode.

## 🛠️ Notes
- Never commit `GoogleService-Info.plist` — it contains sensitive API keys.
- Update the `CFBundleURLSchemes` entry in `Info.plist` with your Firebase-generated URL scheme (`app-1-XXXXXX`).
- Developer Mode must be enabled on your device: **Settings → Privacy & Security → Developer Mode**.

## 📦 Requirements
- Xcode 15+
- iOS 17+
- Firebase project with Phone Auth enabled
- Real iOS device (Simulator not supported for OTP)

📺 [Watch the guide on YouTube](https://youtube.com/watch?v=PLACEHOLDER)
