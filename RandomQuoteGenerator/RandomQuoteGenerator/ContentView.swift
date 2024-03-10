//
//  ContentView.swift
//  RandomQuoteGenerator
//
//  Created by Shah, Om on 3/10/24.
//

import SwiftUI

struct ContentView: View {
    @State private var generatedQuote: String = ""
    
    var body: some View {
        ZStack {
            Image("BG")
            .resizable()
            .scaledToFill()
            .edgesIgnoringSafeArea(.all)
            
            
            Button(action: {
            generatedQuote = getQuote()
    
            }, label: {
                Text("Generate Quote")
            })
            .foregroundColor(.white)
            .padding()
            .background(Color.cyan)
            .cornerRadius(10)
            .offset(CGSize(width: 0.0, height: -200.0))
        
            if !generatedQuote.isEmpty {
                Text (generatedQuote)
                    .padding()
                    .background(Color.orange)
                    .offset(CGSize(width: 0.0, height: -100.0))
        }
    
       
        
       
        }
    }
}
    
#Preview {
    ContentView()
}
