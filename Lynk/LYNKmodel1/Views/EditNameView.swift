//
//  EditNameView.swift
//  Edit Profile
//
//  Created by Fanning, Corbin on 4/22/24.
//

import SwiftUI

struct EditNameView: View {
    
    @Binding var name: String
    @Binding var isShowing: Bool
    
    var body: some View {
            HStack {
                TextField("Type a new name", text: $name)
                    .padding()
                    .background(Color.white.opacity(0.75)) // Light background to see the TextField
                    .foregroundColor(.black) // Text color
                    .cornerRadius(5)
                    .padding() // Padding around the TextField
                    .font(.custom("Andika", size: 16))
                    
                
                
                VStack {
                    Button(action: {
                        isShowing = false  // Hide view after rename
                    }, label: {
                        Text("Rename")
                            .foregroundStyle(Color.white)
                            .font(.custom("Andika", size: 16))
                            .bold()
                    })
                    .padding()
                    .background(Color.BK)
                    .cornerRadius(10)
                    
                    
                    Button(action: {
                        isShowing = false
                    }, label: {
                        Text("Go Back")
                            .foregroundStyle(Color.black)
                            .font(.custom("Andika", size: 16))
                            .bold()
                            .padding()
                    })
                    
                }
                .offset(y: 30)
            
            }
            .offset(y: -25)
            .padding()
            .frame(width: 350, height: 125)
            .background(Color.white)
            .cornerRadius(20)
            .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
        
    }
}

#Preview {
    EditNameView(name: .constant("Corbin Fanning"), isShowing: .constant(true))
}

