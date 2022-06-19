//
//  NumPad.swift
//  CalcDemo
//
//  Created by Artem Paliutin on 19/06/2022.
//

import Foundation


enum NumPad: CaseIterable {
    case one, two, three, four, five, six, seven, eight, nine, zero
    case plus, minus, multiply, divide
    case equally, percent, c, plusMinus, point, remove
    
    
    // MARK: - systemName
    var systemName: String {
        switch self {
        case .one:
            return "1.circle"
        case .two:
            return "2.circle"
        case .three:
            return "3.circle"
        case .four:
            return "4.circle"
        case .five:
            return "5.circle"
        case .six:
            return "6.circle"
        case .seven:
            return "7.circle"
        case .eight:
            return "8.circle"
        case .nine:
            return "9.circle"
        case .zero:
            return "0.circle"
        case .plus:
            return "plus.circle"
        case .minus:
            return "minus.circle"
        case .multiply:
            return "multiply.circle"
        case .divide:
            return "divide.circle"
        case .equally:
            return "equal.circle"
        case .percent:
            return "percent"
        case .c:
            return "c.circle"
        case .plusMinus:
            return "plusminus.circle"
        case .point:
            return "record.circle"
        case .remove:
            return "arrow.left.circle"
        }
    }
    
    
    // MARK: - grid
    static let grid: [[NumPad]] = [
        [.c,     .plusMinus, .percent, .divide],
        [.seven, .eight,     .nine,    .multiply],
        [.four,  .five,      .six,     .minus],
        [.one,   .two,       .three,   .plus],
        [.zero,  .point,     .remove,  .equally]
    ]
    
    
}
