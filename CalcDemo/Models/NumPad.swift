//
//  NumPad.swift
//  CalcDemo
//
//  Created by Artem Paliutin on 19/06/2022.
//

import Foundation


enum NumPad: String, CaseIterable {
    case one = "1", two = "2", three = "3", four = "4", five = "5", six = "6", seven = "7", eight = "8", nine = "9", zero = "0"
    case plus = "+", minus = "-", multiply = "*", divide = "/"
    case equal = "=", percent = "%", c = "c", plusMinus = "+/-", point = ".", remove = "remove"
    
    
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
        case .equal:
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
        [.zero,  .point,     .remove,  .equal]
    ]
    
    
}
