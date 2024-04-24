//
//  ContentView.swift
//  RestaurantApp
//
//  Created by Shah, Om on 3/24/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                NavigationLink(destination: ProfileView()) {
                    Text("Profile")
                }
                .padding()
                
                NavigationLink(destination: TaxCalculatorView()) {
                    Text("Tax Calculator")
                }
                .padding()
                
                NavigationLink(destination: ExpenseSplitterView()) {
                    Text("Expense Splitter")
                }
                .padding()
                
     
                
             
            }
            .navigationTitle("Restaurant App")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
