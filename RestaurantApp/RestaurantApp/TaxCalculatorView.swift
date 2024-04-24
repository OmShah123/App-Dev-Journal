//
//  TaxCalculatorView.swift
//  RestaurantApp
//
//  Created by Shah, Om on 3/24/24.
//

import SwiftUI

struct TaxCalculatorView: View {
    @State private var preTaxAmount = ""
    @State private var taxRate = ""
    @State private var totalAmount = ""
    
    var body: some View {
        VStack {
            TextField("Pre-tax Amount", text: $preTaxAmount)
                .padding()
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .keyboardType(.decimalPad)
            
            TextField("Tax Rate (%)", text: $taxRate)
                .padding()
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .keyboardType(.decimalPad)
            
            Button(action: {
                calculateTotalAmount()
            }) {
                Text("Calculate Total")
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
            
            Text("Total Amount: $\(totalAmount)")
                .padding()
        }
        .padding()
    }
    
    func calculateTotalAmount() {
        guard let preTax = Double(preTaxAmount),
              let rate = Double(taxRate) else {
            totalAmount = ""
            return
        }
        
        let taxAmount = preTax * (rate / 100)
        totalAmount = String(format: "%.2f", preTax + taxAmount)
    }
}

struct TaxCalculatorView_Previews: PreviewProvider {
    static var previews: some View {
        TaxCalculatorView()
    }
}
