//
//  ExpenseSplitterView.swift
//  RestaurantApp
//
//  Created by Shah, Om on 3/24/24.
//

import SwiftUI

struct ExpenseSplitterView: View {
    @State private var totalAmount = ""
    @State private var numberOfPeople = ""
    @State private var splitAmount = ""
    
    var body: some View {
        VStack {
            TextField("Total Amount", text: $totalAmount)
                .padding()
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .keyboardType(.decimalPad)
            
            TextField("Number of People", text: $numberOfPeople)
                .padding()
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .keyboardType(.numberPad)
            
            Button(action: {
                calculateSplitAmount()
            }) {
                Text("Calculate Split")
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
            
            Text("Split Amount: $\(splitAmount)")
                .padding()
        }
        .padding()
    }
    
    func calculateSplitAmount() {
        guard let total = Double(totalAmount),
              let people = Int(numberOfPeople),
              people > 0 else {
            splitAmount = ""
            return
        }
        
        let split = total / Double(people)
        splitAmount = String(format: "%.2f", split)
    }
}

struct ExpenseSplitterView_Previews: PreviewProvider {
    static var previews: some View {
        ExpenseSplitterView()
    }
}
