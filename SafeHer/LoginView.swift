//
//  Login.swift
//  SafeHer
//
//  Created by Adi Gulalkari on 11/09/24.
//

import SwiftUI

struct LoginView: View {
    @State private var email: String = ""
    @State private var password: String = ""
    @State private var phoneNumber: String = ""

    var body: some View {
        VStack {
            // Top Bar
            VStack(spacing: 0) {
                Rectangle()
                    .fill(Color(red: 1.0, green: 0.2235294117647059, blue: 0.4549019607843137))
                    .frame(height: 50)
                Rectangle()
                    .fill(Color(red: 1.0, green: 0.5568627450980392, blue: 0.6901960784313725))
                    .frame(height: 40)
            }
            .edgesIgnoringSafeArea(.top)
            
            

            // Logo
            Image("Login") // Make sure to have a "Logo" image in your assets
                .resizable()
                .frame(width: 120, height: 120)
                .clipShape(Circle())
                .padding(.bottom, 20)
            
            // Sign-Up Texts
            Text("SIGN-UP")
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding(.bottom, 2)
            Text("Please sign up to continue")
                .foregroundColor(.gray)
                .font(.subheadline)
            
            // Form Fields
            VStack(alignment: .leading, spacing: 16) {
                Text("EMAIL")
                    .font(.footnote)
                    .fontWeight(.semibold)
                    .foregroundColor(.gray)
                TextField("gayathri.ajax@gmail.com", text: $email)
                    .padding()
                    .background(Color.gray.opacity(0.2))
                    .cornerRadius(8)
                    .autocapitalization(.none)
                    .disableAutocorrection(true)

                Text("PASSWORD")
                    .font(.footnote)
                    .fontWeight(.semibold)
                    .foregroundColor(.gray)
                SecureField("********", text: $password)
                    .padding()
                    .background(Color.gray.opacity(0.2))
                    .cornerRadius(8)

                Text("PHONE NUMBER")
                    .font(.footnote)
                    .fontWeight(.semibold)
                    .foregroundColor(.gray)
                TextField("9638927394", text: $phoneNumber)
                    .padding()
                    .background(Color.gray.opacity(0.2))
                    .cornerRadius(8)
                    .keyboardType(.phonePad)
            }
            .padding(.horizontal, 24)
            .padding(.top, 30)
            
            // Spacer to push everything up
            Spacer()

            // Sign In Option
            HStack {
                Text("Have an account?")
                    .foregroundColor(.gray)
                Button(action: {
                    // Action to sign in
                }) {
                    Text("Sign in")
                        .foregroundColor(.pink)
                        .fontWeight(.bold)
                }
            }
            .padding(.bottom, 30)
        }
    }
}

#Preview {
    LoginView()
}
