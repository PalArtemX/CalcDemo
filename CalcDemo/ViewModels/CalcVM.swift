//
//  CalcVM.swift
//  CalcDemo
//
//  Created by Artem Paliutin on 19/06/2022.
//

import Foundation


class CalcVM: ObservableObject {
    @Published private(set) var numberField = "0" {
        willSet {
            if newValue.isEmpty {
                numberField = "0"
            }
        }
    }
    
    @Published private(set) var showEqualResult = false
    @Published private(set) var firstNumber: Double?
    @Published private(set) var secondNumber: Double?
    
    private var runningNumber: Double = 0
    private(set) var currentOperation: Operations = .none
    
    
    // MARK: - FUNCTIONS
    
    /// The function is called when the button is pressed, depending on the passed parameter, the actions differ
    /// - Parameter numPad: The symbol is passed from enum NumPad
    func didTap(symbol numPad: NumPad) {
        switch numPad {
        case .one, .two, .three, .four, .five, .six, .seven, .eight, .nine, .zero:
            numberCase(numPad: numPad)
        case .plus, .minus, .multiply, .divide, .equal:
            operationCase(numPad: numPad)
        case .point, .plusMinus, .percent:
            functionalCase(numPad: numPad)
        case .c:
            clearCase()
        case .remove:
            removeLastCase()
        }
    }
    
    private func numberCase(numPad: NumPad) {
        let number = numPad.rawValue
        
        if numberField == "0" {
            numberField = number
        } else {
            numberField = "\(numberField)\(number)"
        }
    }
    
    private func operationCase(numPad: NumPad) {
        switch numPad {
        case .plus:
            currentOperation = .plus
            runningNumber = Double(numberField) ?? 0
            firstNumber = runningNumber
        case .minus:
            currentOperation = .minus
            runningNumber = Double(numberField) ?? 0
            firstNumber = runningNumber
        case .multiply:
            currentOperation = .multiply
            runningNumber = Double(numberField) ?? 0
            firstNumber = runningNumber
        case .divide:
            currentOperation = .divide
            runningNumber = Double(numberField) ?? 0
            firstNumber = runningNumber
        case .equal:
            let runningValue = runningNumber
            let currentValue = Double(numberField) ?? 0
            secondNumber = currentValue
            
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
            
            print("???? Equal >> |\(numberField)|")
            showEqualResult = true
        default:
            break
        }
        
        if numPad != .equal {
            numberField = "0"
        }
    }
    
    private func functionalCase(numPad: NumPad) {
        switch numPad {
        case .point:
            numberField.append(".")
        case .plusMinus:
            if numberField[numberField.startIndex] == "-" {
                numberField.removeFirst()
            } else {
                numberField.insert("-", at: numberField.startIndex)
            }
        case .percent:
            break
        default:
            break
        }
    }
    
    private func clearCase() {
        numberField = "0"
        currentOperation = .none
        secondNumber = nil
        firstNumber = nil
        showEqualResult = false
    }
    
    private func removeLastCase() {
        if !numberField.isEmpty {
            numberField.removeLast()
        }
    }
}
