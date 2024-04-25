//
//  HeaderView.swift
//  LYNKmodel1
//
//  Created by Adhithyaa Senthil on 4/24/24.
//


import SwiftUI

struct HeaderView: View {
    let title: String
    let angle: Double
    let background: Color
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 0)
                .foregroundColor(background)
                .rotationEffect(Angle(degrees: angle))
            
            VStack {
                Text(title)
                    .font(.custom("Andika", size: 25))
                    .foregroundColor(.black)
                    .bold()
            }
            .padding(.top, 100)
        }
        .frame(width: UIScreen.main.bounds.width * 3, height: 200)
        .offset(y: -150)
    }
}

#Preview {
    HeaderView(title: "Title", angle: 0, background: .bkColor2)
}

