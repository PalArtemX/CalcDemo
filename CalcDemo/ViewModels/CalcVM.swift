//
//  CalcVM.swift
//  CalcDemo
//
//  Created by Artem Paliutin on 19/06/2022.
//

import Foundation


class CalcVM: ObservableObject {
    @Published var numberField = "0"
    var runningNumber = 0
    var currentOperation: Operations = .none
    
    // MARK: - Functions
    
    func didTap(symbol numPad: NumPad) {
        switch numPad {
        case .one, .two, .three, .four, .five, .six, .seven, .eight, .nine, .zero:
            numberCase(numPad: numPad)
            
        case .plus, .minus, .multiply, .divide, .equal:
            operationCase(numPad: numPad)
            
        case .point, .plusMinus, .percent:
            break
            
        case .c:
            
            numberField = "0"
            
        default:
            break
        }
    
        
    }
    
    // MARK: numberCase
    private func numberCase(numPad: NumPad) {
        let number = numPad.rawValue
        if numberField == "0" {
            numberField = number
        } else {
            numberField = "\(numberField)\(number)"
        }
    }
    
    // MARK: operationCase
    private func operationCase(numPad: NumPad) {
        switch numPad {
        case .plus:
            currentOperation = .plus
            runningNumber = Int(numberField) ?? 0
        case .minus:
            currentOperation = .minus
            runningNumber = Int(numberField) ?? 0
        case .multiply:
            currentOperation = .multiply
            runningNumber = Int(numberField) ?? 0
        case .divide:
            currentOperation = .divide
            runningNumber = Int(numberField) ?? 0
        case .equal:
            let runningValue = runningNumber
            let currentValue = Int(numberField) ?? 0
            switch currentOperation {
            case .plus:
                numberField = "\(runningValue + currentValue)"
            case .minus:
                numberField = "\(runningValue - currentValue)"
            case .multiply:
                numberField = "\(runningValue * currentValue)"
            case .divide:
                numberField = "\(runningValue / currentValue)"
            case .none:
                break
            }
        default: break
        }
        if numPad != .equal {
            numberField = "0"
        }
    }
}
