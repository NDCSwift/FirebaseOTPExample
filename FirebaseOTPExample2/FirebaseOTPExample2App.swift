//
// Project: FirebaseOTPExample2
// File: FirebaseOTPExample2App.swift
// Created by Noah Carpenter
// 🐱 Follow me on YouTube! 🎥
// https://www.youtube.com/@NoahDoesCoding97
// Like and Subscribe for coding tutorials and fun! 💻✨
// Fun Fact: Cats have five toes on their front paws, but only four on their back paws! 🐾
// Dream Big, Code Bigger

import SwiftUI
import Firebase
import FirebaseAuth
import FirebaseCore
import UserNotifications

// AppDelegate class to handle Firebase configuration and notifications
class AppDelegate: NSObject, UIApplicationDelegate, UNUserNotificationCenterDelegate {
    
    // This function is called when the app finishes launching
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]? = nil) -> Bool {
        FirebaseApp.configure()  // Initialize Firebase
        UNUserNotificationCenter.current().delegate = self  // Set notification delegate
        application.registerForRemoteNotifications()  // Register for push notifications
        
        return true
    }
    
    // Handles remote notifications for Firebase authentication
    func application(_ application: UIApplication, didReceiveRemoteNotification userInfo: [AnyHashable: Any], fetchCompletionHandler completionHandler: @escaping(UIBackgroundFetchResult) -> Void) {
        if Auth.auth().canHandleNotification(userInfo) {
            completionHandler(.noData)  // If Firebase handles the notification, return no data
            return
        }
    }
}

// Main entry point for the SwiftUI app
@main
struct FirebaseOTPExample2App: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate  // Connects AppDelegate
    
    var body: some Scene {
        WindowGroup {
            ContentView()  // Sets ContentView as the main UI
        }
    }
}
