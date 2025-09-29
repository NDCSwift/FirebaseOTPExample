{\rtf1\ansi\ansicpg1252\cocoartf2821
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\fnil\fcharset0 .SFNS-Bold;\f1\fnil\fcharset0 .SFNS-Regular;\f2\fnil\fcharset0 HelveticaNeue-Bold;
\f3\fswiss\fcharset0 Helvetica;\f4\froman\fcharset0 TimesNewRomanPSMT;\f5\fnil\fcharset0 .AppleSystemUIFontMonospaced-Regular;
\f6\fmodern\fcharset0 Courier;}
{\colortbl;\red255\green255\blue255;\red14\green14\blue14;\red0\green0\blue0;\red20\green0\blue196;
\red181\green0\blue19;\red151\green0\blue126;}
{\*\expandedcolortbl;;\cssrgb\c6700\c6700\c6700;\csgray\c0;\cssrgb\c10980\c0\c81176;
\cssrgb\c76863\c10196\c8627;\cssrgb\c66667\c5098\c56863;}
\margl1440\margr1440\vieww11520\viewh8400\viewkind0
\pard\tx560\tx1120\tx1680\tx2240\tx2800\tx3360\tx3920\tx4480\tx5040\tx5600\tx6160\tx6720\sl324\slmult1\pardirnatural\partightenfactor0

\f0\b\fs30 \cf2 \uc0\u55357 \u56534  README: Firebase OTP Authentication \'96 SwiftUI Template \u55357 \u56960 
\f1\b0\fs28 \
\
\pard\tx560\tx1120\tx1680\tx2240\tx2800\tx3360\tx3920\tx4480\tx5040\tx5600\tx6160\tx6720\sl324\slmult1\pardirnatural\partightenfactor0

\f0\b\fs26 \cf2 \uc0\u55357 \u56524  Welcome to the Firebase OTP Authentication Template!
\f1\b0\fs28 \
\
This project is a 
\f2\b ready-to-use SwiftUI template
\f1\b0  for 
\f2\b phone number authentication
\f1\b0  using 
\f2\b Firebase OTP
\f1\b0 .\
However, some 
\f2\b sensitive API credentials have been removed
\f1\b0  for security reasons. You 
\f2\b must configure Firebase
\f1\b0  before running this project.
\f3\fs24 \cf0 \
\
\pard\tx560\tx1120\tx1680\tx2240\tx2800\tx3360\tx3920\tx4480\tx5040\tx5600\tx6160\tx6720\sl324\slmult1\pardirnatural\partightenfactor0

\f0\b\fs34 \cf2 \uc0\u55357 \u56524  Steps to Get Started
\f1\b0\fs28 \
\
\pard\tx560\tx1120\tx1680\tx2240\tx2800\tx3360\tx3920\tx4480\tx5040\tx5600\tx6160\tx6720\sl324\slmult1\pardirnatural\partightenfactor0

\f0\b\fs30 \cf2 1\uc0\u65039 \u8419  Create a Firebase Project
\f1\b0\fs28 \
\pard\tqr\tx260\tx420\li420\fi-420\sl324\slmult1\sb240\partightenfactor0

\f4 \cf2 	1.	Go to {\field{\*\fldinst{HYPERLINK "https://console.firebase.google.com/"}}{\fldrslt 
\f2\b Firebase Console}}.\
	2.	Click 
\f2\b \'93Create Project\'94
\f1\b0 , name it (e.g., 
\f5 "Firebase OTP App"
\f1 ), and 
\f2\b Continue
\f1\b0 .\

\f4 	3.	Enable 
\f2\b Google Analytics
\f1\b0  (optional) and complete the setup.
\f3\fs24 \cf0 \
\
\pard\tx560\tx1120\tx1680\tx2240\tx2800\tx3360\tx3920\tx4480\tx5040\tx5600\tx6160\tx6720\sl324\slmult1\pardirnatural\partightenfactor0

\f0\b\fs30 \cf2 2\uc0\u65039 \u8419  Add iOS App to Firebase
\f1\b0\fs28 \
\pard\tqr\tx260\tx420\li420\fi-420\sl324\slmult1\sb240\partightenfactor0

\f4 \cf2 	1.	In Firebase Console, click 
\f2\b \'93Add App\'94
\f1\b0  \uc0\u8594  Select 
\f2\b iOS
\f1\b0 .\

\f4 	2.	Enter your 
\f2\b App Bundle ID
\f1\b0  (found in 
\f5 Xcode \uc0\u8594  Target \u8594  General
\f1 ).\

\f4 	3.	Click 
\f2\b Register App
\f1\b0 .\

\f4 	4.	
\f2\b Download GoogleService-Info.plist
\f1\b0 .\

\f4 	5.	
\f2\b Move this file into the Xcode project\'92s root folder
\f1\b0  (where 
\f5 Info.plist
\f1  is located).\
\
\uc0\u55357 \u57000  
\f2\b Important:
\f1\b0 \
\pard\tqr\tx100\tx260\li260\fi-260\sl324\slmult1\sb240\partightenfactor0
\cf2 	\'95	
\f2\b DO NOT
\f1\b0  commit 
\f5 GoogleService-Info.plist
\f1  to GitHub.\
	\'95	
\f2\b DO NOT
\f1\b0  share API keys publicly.
\f3\fs24 \cf0 \
\
\pard\tx560\tx1120\tx1680\tx2240\tx2800\tx3360\tx3920\tx4480\tx5040\tx5600\tx6160\tx6720\sl324\slmult1\pardirnatural\partightenfactor0

\f0\b\fs30 \cf2 3\uc0\u65039 \u8419  Install Firebase Dependencies
\f1\b0\fs28 \
\pard\tqr\tx260\tx420\li420\fi-420\sl324\slmult1\sb240\partightenfactor0

\f4 \cf2 \
File -> Add Package Dependencies\
Enter the firebase GitHub URL\
{\field{\*\fldinst{HYPERLINK "https://github.com/firebase/firebase-ios-sdk"}}{\fldrslt https://github.com/firebase/firebase-ios-sdk}}\
\
Install FirebaseCore & FirebaseAuth
\f3\fs24 \cf0 \
\
\pard\tx560\tx1120\tx1680\tx2240\tx2800\tx3360\tx3920\tx4480\tx5040\tx5600\tx6160\tx6720\sl324\slmult1\pardirnatural\partightenfactor0

\f0\b\fs30 \cf2 4\uc0\u65039 \u8419  Configure Apple Push Notifications (APNs)
\f1\b0\fs28 \
\
\uc0\u55357 \u56613  
\f2\b Firebase OTP on iOS requires push notifications!
\f1\b0 \
\pard\tqr\tx260\tx420\li420\fi-420\sl324\slmult1\sb240\partightenfactor0

\f4 \cf2 	1.	
\f2\b Generate an APNs Key:
\f1\b0 \
\pard\tqr\tx500\tx660\li660\fi-660\sl324\slmult1\sb240\partightenfactor0
\cf2 	\'95	Go to {\field{\*\fldinst{HYPERLINK "https://developer.apple.com/account/"}}{\fldrslt 
\f2\b Apple Developer Console}}.\
	\'95	Select 
\f2\b Certificates, Identifiers & Profiles
\f1\b0  \uc0\u8594  Click 
\f2\b \'93Keys\'94
\f1\b0 .\
	\'95	Click 
\f2\b \'94+\'94 (Create Key)
\f1\b0  \uc0\u8594  Name it 
\f2\b \'93Firebase APNs Key\'94
\f1\b0 .\
	\'95	Enable 
\f2\b Apple Push Notifications (APNs)
\f1\b0 .\
	\'95	Click 
\f2\b Continue \uc0\u8594  Register \u8594  Download .p8 key
\f1\b0 .\
\pard\tqr\tx260\tx420\li420\fi-420\sl324\slmult1\sb240\partightenfactor0

\f4 \cf2 	2.	
\f2\b Upload APNs Key to Firebase:
\f1\b0 \
\pard\tqr\tx500\tx660\li660\fi-660\sl324\slmult1\sb240\partightenfactor0
\cf2 	\'95	Open {\field{\*\fldinst{HYPERLINK "https://console.firebase.google.com/"}}{\fldrslt 
\f2\b Firebase Console}}.\
	\'95	Go to 
\f2\b Project Settings \uc0\u8594  Cloud Messaging
\f1\b0 .\
	\'95	Under 
\f2\b APNs authentication key
\f1\b0 , click 
\f2\b Upload Key
\f1\b0 .\
	\'95	Upload your 
\f5 .p8
\f1  file and enter:\
\pard\tqr\tx900\tx1060\li1060\fi-1060\sl324\slmult1\sb240\partightenfactor0
\cf2 	\'95	
\f2\b Key ID
\f1\b0  (From Apple Developer).\
	\'95	
\f2\b Team ID
\f1\b0  (From Apple Developer under Membership).\
\pard\tqr\tx500\tx660\li660\fi-660\sl324\slmult1\sb240\partightenfactor0
\cf2 	\'95	Click 
\f2\b Save
\f1\b0 .
\f3\fs24 \cf0 \
\
\pard\tx560\tx1120\tx1680\tx2240\tx2800\tx3360\tx3920\tx4480\tx5040\tx5600\tx6160\tx6720\sl324\slmult1\pardirnatural\partightenfactor0

\f0\b\fs30 \cf2 5\uc0\u65039 \u8419  Update Info.plist
\f1\b0\fs28 \
\
Since API keys were removed, you need to 
\f2\b add your own custom URL scheme
\f1\b0  from Firebase.\
\pard\tqr\tx260\tx420\li420\fi-420\sl324\slmult1\sb240\partightenfactor0

\f4 \cf2 	1.	
\f2\b Find Your Custom URL Scheme:
\f1\b0 \
\pard\tqr\tx500\tx660\li660\fi-660\sl324\slmult1\sb240\partightenfactor0
\cf2 	\'95	Try running the app in Xcode.\
	\'95	Firebase will throw an error similar to:
\f3\fs24 \cf0 \
\
\pard\tx560\tx1120\tx1680\tx2240\tx2800\tx3360\tx3920\tx4480\tx5040\tx5600\tx6160\tx6720\pardirnatural\partightenfactor0

\f6\fs28 \cf3 Please register custom URL scheme app-\cf4 1\cf3 -XXXXXX in the app\cf5 's Info.plist file.
\f3\fs24 \cf0 \
\
\pard\tx560\tx1120\tx1680\tx2240\tx2800\tx3360\tx3920\tx4480\tx5040\tx5600\tx6160\tx6720\sl324\slmult1\pardirnatural\partightenfactor0

\f1\fs28 \cf2 \
\pard\tqr\tx500\tx660\li660\fi-660\sl324\slmult1\sb240\partightenfactor0
\cf2 	\'95	Copy the 
\f5 app-1-XXXXXX
\f1  value.\
\
\pard\tqr\tx260\tx420\li420\fi-420\sl324\slmult1\sb240\partightenfactor0

\f4 \cf2 	2.	
\f2\b Update Info.plist in Xcode:
\f3\b0\fs24 \cf0 \
\
\pard\tx560\tx1120\tx1680\tx2240\tx2800\tx3360\tx3920\tx4480\tx5040\tx5600\tx6160\tx6720\pardirnatural\partightenfactor0

\f6\fs28 \cf6 <key>\cf3 CFBundleURLTypes\cf6 </key>\cf3 \
\cf6 <array>\cf3 \
    \cf6 <dict>\cf3 \
        \cf6 <key>\cf3 CFBundleURLSchemes\cf6 </key>\cf3 \
        \cf6 <array>\cf3 \
            \cf6 <string>\cf3 app-1-XXXXXX\cf6 </string>\cf3 \
        \cf6 </array>\cf3 \
    \cf6 </dict>\cf3 \
\cf6 </array>
\f3\fs24 \cf0 \
\
\pard\tx560\tx1120\tx1680\tx2240\tx2800\tx3360\tx3920\tx4480\tx5040\tx5600\tx6160\tx6720\sl324\slmult1\pardirnatural\partightenfactor0

\f1\fs28 \cf2 \uc0\u55357 \u56960  
\f2\b Replace app-1-XXXXXX with your actual Firebase-generated URL scheme.
\f3\b0\fs24 \cf0 \
\

\f0\b\fs30 \cf2 6\uc0\u65039 \u8419  Run the App on a Real Device
\f1\b0\fs28 \
\
\uc0\u55357 \u57000  
\f2\b OTP Authentication DOES NOT work on simulators!
\f1\b0 \
\pard\tqr\tx100\tx260\li260\fi-260\sl324\slmult1\sb240\partightenfactor0
\cf2 	\'95	
\f2\b Connect your iPhone via USB.
\f1\b0 \
	\'95	
\f2\b Enable Developer Mode
\f1\b0  (
\f5 Settings \uc0\u8594  Privacy & Security \u8594  Developer Mode
\f1 ).\
	\'95	
\f2\b Run the app from Xcode on your real device
\f1\b0 .
\f3\fs24 \cf0 \
\
\pard\tx560\tx1120\tx1680\tx2240\tx2800\tx3360\tx3920\tx4480\tx5040\tx5600\tx6160\tx6720\sl324\slmult1\pardirnatural\partightenfactor0

\f0\b\fs34 \cf2 \uc0\u55357 \u56524  What\'92s Already Set Up in This Template?
\f1\b0\fs28 \
\
\uc0\u9989  
\f2\b Complete Firebase Phone Authentication flow
\f1\b0  (Phone input, OTP verification, User login).\
\uc0\u9989  
\f2\b SwiftUI login screen
\f1\b0  with OTP input.\
\uc0\u9989  
\f2\b Push notification handling via AppDelegate.swift
\f1\b0 .\
\uc0\u9989  
\f2\b Pre-configured FirebaseAuth API calls
\f1\b0 .
\f3\fs24 \cf0 \
\

\f0\b\fs34 \cf2 \uc0\u55357 \u56524  Troubleshooting
\f3\b0\fs24 \cf0 \
\
\pard\tx560\tx1120\tx1680\tx2240\tx2800\tx3360\tx3920\tx4480\tx5040\tx5600\tx6160\tx6720\sl324\slmult1\pardirnatural\partightenfactor0

\f2\b\fs26 \cf2 Issue
\f3\b0\fs24 \cf0 	
\f2\b\fs26 \cf2 Fix
\f3\b0\fs24 \cf0 \

\f2\b\fs26 \cf2 OTP request fails
\f3\b0\fs24 \cf0 	
\f1\fs26 \cf2 \uc0\u9989  Ensure 
\f2\b phone number is in E.164 format
\f1\b0  (
\f5 +12223334444
\f1 )
\f3\fs24 \cf0 \

\f2\b\fs26 \cf2 App crashes on OTP verification
\f3\b0\fs24 \cf0 	
\f1\fs26 \cf2 \uc0\u9989  Ensure 
\f2\b APNs key is uploaded to Firebase
\f3\b0\fs24 \cf0 \

\f2\b\fs26 \cf2 Firebase returns nil for verificationID
\f3\b0\fs24 \cf0 	
\f1\fs26 \cf2 \uc0\u9989  Check 
\f2\b FirebaseAppDelegateProxyEnabled in Info.plist
\f3\b0\fs24 \cf0 \

\f2\b\fs26 \cf2 Push notifications not received
\f3\b0\fs24 \cf0 	
\f1\fs26 \cf2 \uc0\u9989  Ensure 
\f2\b AppDelegate.swift is handling notifications
\f3\b0\fs24 \cf0 \
}