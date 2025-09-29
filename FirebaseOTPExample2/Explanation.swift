/*
 
 // 📌 How to Sign Up a User with Firebase Using Only Their Phone Number in SwiftUI

 // 🔹 Firebase allows users to authenticate using only a phone number, without needing a password or email.
 // 🔹 The process involves sending an OTP (One-Time Password) via SMS and verifying it to create a new user session.

 // 1️⃣ Ensure Firebase Authentication is Set Up:
 // - Go to Firebase Console (https://console.firebase.google.com/)
 // - Navigate to "Authentication" > "Sign-in method"
 // - Enable **Phone Number** authentication.

 // 2️⃣ Collect the User's Phone Number:
 /*
     TextField("Enter phone number", text: $phoneNumber)
         .textFieldStyle(RoundedBorderTextFieldStyle())
         .keyboardType(.phonePad)
         .padding()
 */

 // 3️⃣ Send OTP to the User:
 /*
     func sendOTP() {
         PhoneAuthProvider.provider().verifyPhoneNumber(phoneNumber, uiDelegate: nil) { verificationID, error in
             if let error = error {
                 print("Error sending OTP: \(error.localizedDescription)")
                 return
             }
             self.verificationID = verificationID  // Store the verification ID
             self.isOTPSent = true  // Update UI to show OTP input field
         }
     }
 */

 // 4️⃣ Collect the OTP from the User:
 /*
     TextField("Enter OTP", text: $otpCode)
         .keyboardType(.numberPad)
         .padding()
 */

 // 5️⃣ Verify the OTP and Sign Up the User:
 /*
     func verifyOTP() {
         guard let verificationID = verificationID else { return }
         
         let credential = PhoneAuthProvider.provider().credential(
             withVerificationID: verificationID, verificationCode: otpCode)
         
         Auth.auth().signIn(with: credential) { authResult, error in
             if let error = error {
                 print("Error verifying OTP: \(error.localizedDescription)")
                 return
             }
             print("User successfully signed up and logged in!")
         }
     }
 */

 // 🎉 Once the OTP is verified, the user is authenticated and signed in.
 // 🔹 If it's their first time, Firebase automatically creates a new account for them.
 // 🔹 If they already exist, Firebase simply logs them in.

*/
