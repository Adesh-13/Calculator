//
//  CalculatorViewModel.swift
//  Calculator
//
//  Created by Adesh Newaskar on 04/06/25.
//

import Foundation

class CalculatorViewModel: ObservableObject {
    @Published var result: Double = 0
    
    func calculate(_ a: Double, _ b: Double, operation: Operation) {
        switch operation {
        case .add:
            result = a + b
        case .subtract:
            result = a - b
        case .multiply:
            result = a * b
        case .divide:
            result = b != 0 ? a / b : 0
        }
    }
}
