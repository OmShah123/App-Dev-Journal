//
//  ContentView.swift
//  LYNKmodel1
//
//  Created by Adhithyaa Senthil on 3/20/24.
//

import SwiftUI

struct WelcomeScreen: View {
    @State private var showLoginScreen = false
    @State private var showSignUpScreen = false
    var body: some View {
        NavigationStack{
            ZStack{
                Color("BKColor")
                    .ignoresSafeArea()
                VStack{
                    Image("lynk")
                    Text("Welcome to Lynk")
                        .font(.largeTitle)
                        .foregroundColor(Color.white)
                        .bold()
                        .padding()
                    HStack{
                        Button("Sign Up"){
                            showSignUpScreen = true
                        }
                        .buttonStyle(.borderedProminent)
                        Text("or").foregroundStyle(.blue)
                        Button("Login"){
                            showLoginScreen = true
                        }
                        .buttonStyle(.borderedProminent)
                    }
                }
            }
        }.fullScreenCover(isPresented: $showSignUpScreen){
            SignUpUI()
        }
        .fullScreenCover(isPresented: $showLoginScreen){
            LoginUI()
        }
    }
}

#Preview {
    WelcomeScreen()
}
