//
//  ContentView.swift
//  Edit Profile
//
//  Created by Fanning, Corbin on 4/18/24.
//

import SwiftUI

struct ContentView: View {
    @State var name: String = "First Last"
    @State private var showingEditScreen: Bool = false
    @State private var shwoingLinkScreen: Bool = false
    
    var body: some View {
        NavigationView {
            ZStack {
                Color.BK
                
                VStack {
                    HeaderView(title: "Edit Profile", angle: 0, background: .bkColor2)
                    Spacer()
                    FooterView(buttonName: "Back", angle: 0, background: .bkColor2)
                        .offset(y: 275)
                    
                }
                
                Divider().background(Color.white).offset(y: -329).bold()
                
                VStack {
                    Divider().background(Color.white).bold()

                    
                    Text(name)
                        .foregroundStyle(Color.white)
                        .font(.custom("Andika", size: 23))
                    
                    Divider().background(Color.white).bold()

                    
                    Button(action: {
                        self.showingEditScreen = true
                    }) {
                        HStack {
                            Text("Edit Name")
                                .foregroundColor(.white)
                                .font(.custom("Andika", size: 23))
                                .underline()
                            
                        }
                        .padding()
                    }
                    .background(Color.BK)
                    .cornerRadius(0)
    
                    Divider().background(Color.white).bold()
                    
                    
                }
                .offset(y: -250)
                
                if showingEditScreen {
                    
                    EditNameView(name: $name, isShowing: $showingEditScreen)
                        .transition(.move(edge: .bottom))
                }
             }
                .offset(y: 20)
                
            }
        }
    
//    init() {
//        for familyName in UIFont.familyNames {
//            print(familyName)
//
//            for fontName in UIFont.fontNames(forFamilyName: familyName) {
//                print("-- \(fontName)")
//            }
//        }
//    }
        
    }
    

#Preview {
    ContentView()
}
