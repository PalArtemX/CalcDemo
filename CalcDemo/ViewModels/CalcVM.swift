//
//  CalcVM.swift
//  CalcDemo
//
//  Created by Artem Paliutin on 19/06/2022.
//

import Foundation


class CalcVM: ObservableObject {
    @Published var numberField = "0"
    
    
    
    // MARK: - Functions
    
    func didTap(symbol numPad: NumPad) {
        switch numPad {
        case .one, .two, .three, .four, .five, .six, .seven, .eight, .nine, .zero:
            numberCase(numPad: numPad)
        case .c:
            numberField = "0"
        default:
            break
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
}
