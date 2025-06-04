//
//  CalculatorView.swift
//  Calculator
//
//  Created by Adesh Newaskar on 04/06/25.
//

import SwiftUI

struct CalculatorView: View {
    @StateObject private var viewModel = CalculatorViewModel()
    @State private var input1 = ""
    @State private var input2 = ""
    
    var body: some View {
        Text("Calculator")
            .bold()
        VStack(spacing: 16) {
            TextField("Enter first number", text: $input1)
                .keyboardType(.decimalPad)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            TextField("Enter second number", text: $input2)
                .keyboardType(.decimalPad)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            
            HStack {
                Button("Add") {
                    perform(.add)
                }
                Button("Subtract") {
                    perform(.subtract)
                }
                Button("Multiply") {
                    perform(.multiply)
                }
                Button("Divide") {
                    perform(.divide)
                }
            }
            
            Text("Result: \(viewModel.result)")
                .font(.title)
        }
        .padding()
    }
    
    func perform(_ operation: Operation) {
        guard let a = Double(input1), let b = Double(input2) else { return }
        viewModel.calculate(a, b, operation: operation)
    }
}


#Preview {
    CalculatorView()
}
