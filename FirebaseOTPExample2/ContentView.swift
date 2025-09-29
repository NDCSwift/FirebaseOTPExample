//
// Project: FirebaseOTPExample2
// File: ContentView.swift
// Created by Noah Carpenter
// 🐱 Follow me on YouTube! 🎥
// https://www.youtube.com/@NoahDoesCoding97
// Like and Subscribe for coding tutorials and fun! 💻✨
// Fun Fact: Cats have five toes on their front paws, but only four on their back paws! 🐾
// Dream Big, Code Bigger

import SwiftUI
import FirebaseAuth

struct ContentView: View {
    // State variables for user input and app behavior
    @State private var phoneNumber = ""         // Stores the phone number entered by the user
    @State private var isOTPSent = false        // Tracks whether OTP has been sent
    @State private var verificationID: String?  // Stores the verification ID received from Firebase
    @State private var otpCode = ""             // Stores the OTP code entered by the user
    @State private var showHomeScreen = false   // Controls navigation to the home screen
    @State private var isLoading = false        // Indicates whether the process is loading
    
    var body: some View {
        VStack {
            // Title text
            Text("Login with Phone and OTP")
                .font(.title)
                .bold()
            
            // Text field for phone number input
            TextField("Enter phone number", text: $phoneNumber)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .keyboardType(.phonePad)
                .padding()
            
            // If OTP is sent, show the OTP input field
            if isOTPSent {
                TextField("Enter OTP", text: $otpCode)
                    .keyboardType(.numberPad)
                    .padding()
            }
            
            // Button to send or verify OTP
            Button(action: isOTPSent ? verifyOTP : sendOTP){
                Text(isOTPSent ? "Verify OTP" : "Send OTP")
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(.blue)
                    .foregroundStyle(.white)
                    .cornerRadius(10)
            }
            
            // Show loading indicator while processing OTP
            if isLoading {
                ProgressView()
                    .progressViewStyle(.circular)
            }
        }
        .padding()
        .fullScreenCover(isPresented: $showHomeScreen){
            homeScreenView() // Navigates to home screen after successful login
        }
    }
    
    // Function to send OTP
    func sendOTP() {
        isLoading = true
      
        let settings = Auth.auth().settings
        settings?.isAppVerificationDisabledForTesting = false  // ✅ Ensure verification is enabled

        PhoneAuthProvider.provider().verifyPhoneNumber(phoneNumber, uiDelegate: nil) { verificationID, error in
            if let error = error {
                print("Error sending OTP: \(error.localizedDescription)")
                return
            }
            isLoading = false
            self.verificationID = verificationID  // Store the received verification ID
            self.isOTPSent = true  // Update state to show OTP input field
        }
    }
    
    // Function to verify OTP
    func verifyOTP() {
        isLoading = true
        guard let verificationID = verificationID else { return }
        
        let credential = PhoneAuthProvider.provider().credential(
            withVerificationID: verificationID, verificationCode: otpCode)
        
        Auth.auth().signIn(with: credential) { authResult, error in
            if let error = error {
                print("Error verifying OTP: \(error.localizedDescription)")
                return
            }
            isLoading = false
            print("User has signed in successfully!")
            self.showHomeScreen = true // Navigate to home screen on success
        }
    }
}

#Preview {
    ContentView()
}
