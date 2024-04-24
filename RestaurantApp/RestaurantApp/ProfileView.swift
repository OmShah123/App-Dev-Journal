//
//  ProfileView.swift
//  RestaurantApp
//
//  Created by Shah, Om on 3/24/24.
//

import SwiftUI

struct ProfileView: View {
    @State private var allergies = ""
    @State private var dietaryRestrictions = ""
    
    var body: some View {
        VStack {
            TextField("Allergies", text: $allergies)
                .padding()
                .textFieldStyle(RoundedBorderTextFieldStyle())
            
            TextField("Dietary Restrictions", text: $dietaryRestrictions)
                .padding()
                .textFieldStyle(RoundedBorderTextFieldStyle())
            
            Button(action: {
                // Save profile details
            }) {
                Text("Save Profile")
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
        }
        .padding()
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
