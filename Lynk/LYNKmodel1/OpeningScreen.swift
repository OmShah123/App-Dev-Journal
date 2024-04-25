//
//  OpeningScreen.swift
//  LYNKmodel1
//
//  Created by Adhithyaa Senthil on 4/24/24.
//

import SwiftUI

struct SplashScreenView: View {
    @State var isActive : Bool = false
    @State private var size = 0.8
    @State private var opacity = 0.5
    
    var body: some View {
        if isActive {
            WelcomeScreen()
        } else {
            VStack {
                VStack {
                    Image("lynk")
                        .font(.system(size: 80))
                    Text("Welcome to Lynk")
                        .font(.largeTitle)
                        .foregroundColor(Color.white)
                        .bold()
                        .padding()
                }
                .scaleEffect(size)
                .opacity(opacity)
                .onAppear {
                    withAnimation(.easeIn(duration: 1.2)) {
                        self.size = 0.9
                        self.opacity = 1.00
                    }
                }
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color.BK)
                .edgesIgnoringSafeArea(.all)
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
                    withAnimation {
                        self.isActive = true
                    }
                }
            }
        }
    }
}

struct SplashScreenView_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreenView()
    }
}
