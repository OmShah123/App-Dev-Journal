//
//  SwiftUIView.swift
//  LYNKmodel1
//
//  Created by Adhithyaa Senthil on 3/21/24.
//

import SwiftUI

struct SignUpUI: View {    
    @State private var name = ""
    @State private var email = ""
    @State private var password = ""
    @State private var retypePassword = ""
    @State private var noName = 0
    @State private var noEmail = 0
    @State private var noPassword = 0
    @State private var noRetypePassword = 0
    @State private var showingLoginScreen = false
    @State private var showCommunitiesScreen = false
    
    
    var body: some View {
        NavigationView{
            ZStack{
                Color("BKColor")
                    .ignoresSafeArea()
                VStack{
                    TextField("Name", text: $name)
                        .padding()
                        .frame(width: 300, height: 50)
                        .background(Color.white)
                        .border(.red, width: CGFloat(noName))
                    TextField("Email", text: $email)
                        .padding()
                        .frame(width: 300, height: 50)
                        .background(Color.white)
                        .border(.red, width: CGFloat(noEmail))
                    SecureField("Password", text: $password)
                        .padding()
                        .frame(width: 300, height: 50)
                        .background(Color.white)
                        .border(.red, width: CGFloat(noPassword))
                    SecureField("Retype Password", text: $retypePassword)
                        .padding()
                        .frame(width: 300, height: 50)
                        .background(Color.white)
                        .border(.red, width: CGFloat(noRetypePassword))
                    Button("Sign Up"){
                        if validateInput(){
                            showCommunitiesScreen = true
                        }
                    }
                    .controlSize(.regular)
                    .font(.custom("Andika", size: 23))
                    .foregroundStyle(.BK)
                    .padding(10)
                    .background(Color.bkColor2)
                    .cornerRadius(10)
                    HStack{
                        Text("Have an account?")
                            .foregroundStyle(.bkColor2)
                            .underline()
                        Button("Login"){
                            showingLoginScreen = true
                        }.controlSize(.regular)
                            .font(.custom("Andika", size: 15))
                            .foregroundStyle(.BK)
                            .padding(10)
                            .background(Color.bkColor2)
                            .cornerRadius(10)
                    }
                }
            }
            .fullScreenCover(isPresented: $showingLoginScreen){
                LoginUI()
            }
            .fullScreenCover(isPresented: $showCommunitiesScreen){
                PostPageUI()
            }
        }
    }
    func validateInput() -> Bool {
        var isValid = true
        
        if name.isEmpty {
            noName = 1
            isValid = false
        } else {
            noName = 0
        }
        
        if email.isEmpty || !email.contains("@") {
            noEmail = 1
            isValid = false
        } else {
            noEmail = 0
        }
        
        if password.isEmpty || password.count < 6 {
            noPassword = 1
            isValid = false
        } else {
            noPassword = 0
        }
        
        if retypePassword.isEmpty || retypePassword != password {
            noRetypePassword = 1
            isValid = false
        } else {
            noRetypePassword = 0
        }
        return isValid
    }
}

#Preview {
    SignUpUI()
}
