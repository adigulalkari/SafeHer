//
//  ContentView.swift
//  SafeHer
//
//  Created by Adi Gulalkari on 11/09/24.
//
import SwiftUI

struct ContentView: View {
    @State private var isHotspotActive = false // State to trigger navigation to Hotspot
    @State private var isLoginActive = false // State to trigger navigation to Login
    
    var body: some View {
        NavigationStack { // Wrap everything in NavigationStack
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
                Spacer()
                Image("Logo")
                // Welcome Text
                VStack(spacing: 8) {
                    
                    Text("Welcome, Gayathri!")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                    HStack(){
                        Text("Have a good day!")
                            .font(.body)
                            .foregroundColor(.gray)
                            
                        
                    }
                    
                }
                .padding(.vertical, 20)
                
                // Button Grid
                VStack(spacing: 20) {
                    HStack(spacing: 20) {
                        createButton(title: "Insurance Benefits")
                            .background(Colo)
                        createButton(title: "Hotspot Monitoring")
                    }
                    HStack(spacing: 20) {
                        createButton(title: "Safe Routing")
                        createButton(title: "Emergency Contacts")
                    }
                }
                .padding(.horizontal)
                
                Spacer()
                
                // Bottom Icons
                HStack {
                    bottomIcon(systemName: "archivebox") // Not assigned to navigation
                    bottomIcon(systemName: "square.grid.2x2") // Not assigned to navigation
                    bottomIcon(systemName: "map") // Not assigned to navigation
                    bottomIcon(systemName: "book") // Not assigned to navigation
                    bottomIcon(systemName: "person") // This will open Login
                }
                .padding(.all, 30)
                .background(Color(red: 1.0, green: 0.0, blue: 0.0, opacity: 1.0))
            }
            .edgesIgnoringSafeArea(.all) // Extend background color to bottom
            
            // Use `navigationDestination` to bind to state changes
            .navigationDestination(isPresented: $isHotspotActive) {
                Hotspot()
            }
            .navigationDestination(isPresented: $isLoginActive) {
                LoginView()
            }
        }
    }
    
    // Custom Button View
    func createButton(title: String) -> some View {
        Text(title)
            .fontWeight(.medium)
            .frame(width: 150, height: 80)
            .background(Color.pink.opacity(0.3))
            .cornerRadius(12)
            .overlay(
                RoundedRectangle(cornerRadius: 12)
                    .stroke(Color.pink, lineWidth: 2)
            )
    }
    
    // Custom Icon View
    func bottomIcon(systemName: String) -> some View {
        Button(action: {
            if systemName == "person" {
                goToLogin() // Open Login when person icon is clicked
            } else if systemName == "map" {
                goToHotspot() // This can be used for other navigation
            }
        }) {
            Image(systemName: systemName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 30, height: 30)
                .padding()
                .background(Color.white)
                .cornerRadius(10)
        }
    }
    
    // goTo function to activate Hotspot view
    func goToHotspot() {
        isHotspotActive = true
    }
    
    // goToLogin function to activate Login view
    func goToLogin() {
        isLoginActive = true
    }
}

#Preview {
    ContentView()
}
