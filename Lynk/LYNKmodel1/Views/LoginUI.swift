//
//  LoginUI.swift
//  LYNKmodel1
//
//  Created by Adhithyaa Senthil on 3/21/24.
//

import SwiftUI

struct LoginUI: View {
    @State private var username = ""
    @State private var password = ""
    @State private var wrongUsername = 0
    @State private var wrongPassword = 0
    @State private var showingSignUpScreen = false
    @State private var showCommunitiesScreen = false
    
    var body: some View {
        NavigationView{
            ZStack{
                Color("BKColor")
                    .ignoresSafeArea()
                VStack{
                    Text("Login Page")
                        .font(.custom("Andika", size: 23))
                        .bold()
                        .foregroundStyle(.white)
                        .padding()
                    TextField("Username", text: $username)
                        .padding()
                        .frame(width: 300, height: 50)
                        .background(Color.white)
                        .border(.red, width: CGFloat(wrongUsername))
                    SecureField("Password", text: $password)
                        .padding()
                        .frame(width: 300, height: 50)
                        .background(Color.white)
                        .border(.red, width: CGFloat(wrongPassword))
                    Button("Login"){
                        authenticateUser(username: username, password: password)
                    }
                    .controlSize(.regular)
                    .font(.custom("Andika", size: 23))
                    .foregroundStyle(.BK)
                    .padding(10)
                    .background(Color.bkColor2)
                    .cornerRadius(10)
                    VStack{
                        Text("Don't have an account?")
                            .foregroundStyle(.bkColor2)
                            .underline()
                        HStack{
                            Button("Sign Up"){
                                showingSignUpScreen = true
                            }
                            .controlSize(.regular)
                                .font(.custom("Andika", size: 18))
                                .foregroundStyle(.BK)
                                .padding(10)
                                .background(Color.bkColor2)
                                .cornerRadius(10)
                        }
                    }
                }
            }
            .navigationBarHidden(true)
            .fullScreenCover(isPresented: $showingSignUpScreen){
                SignUpUI()
            }
            .fullScreenCover(isPresented: $showCommunitiesScreen){
                PostPageUI()
            }
        }
    }
    func authenticateUser(username:String, password:String){
        if username.lowercased() == "adhithyaa senthil" {
            wrongUsername = 0
            if password.lowercased() == "luvisrage3"{
                wrongUsername = 0
                showCommunitiesScreen = true
            }
            else{
                wrongPassword = 2
            }
        }
        else{
            wrongUsername = 2
        }
    }
}

#Preview {
    LoginUI()
}
