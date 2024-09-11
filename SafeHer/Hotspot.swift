//
//  Hotspot.swift
//  SafeHer
//
//  Created by Adi Gulalkari on 11/09/24.
//

import SwiftUI

struct Hotspot: View {
    var body: some View {
        ZStack {
            Image("HOTSPOT")
                .resizable()
                .ignoresSafeArea()

            VStack {
                Spacer() // Pushes content to the bottom
                
                // Bottom Icons
                HStack {
                    bottomIcon(systemName: "archivebox")
                    bottomIcon(systemName: "square.grid.2x2")
                    bottomIcon(systemName: "map")
                    bottomIcon(systemName: "book")
                    bottomIcon(systemName: "person")
                }
                .padding(.all, 30)
                .background(Color(red: 1.0, green: 0.2235294117647059, blue: 0.4549019607843137))
            }
        }
        .edgesIgnoringSafeArea(.all) // Extend background color to bottom
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
    Image(systemName: systemName)
        .resizable()
        .aspectRatio(contentMode: .fit)
        .frame(width: 30, height: 30)
        .padding()
        .background(Color.white)
        .cornerRadius(10)
}

#Preview {
    Hotspot()
}
