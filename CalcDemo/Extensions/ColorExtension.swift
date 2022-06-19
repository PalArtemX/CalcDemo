//
//  ColorExtension.swift
//  CalcDemo
//
//  Created by Artem Paliutin on 19/06/2022.
//

import SwiftUI


struct ColorTheme {
    let background = Color("Background")
    let number = Color("Number")
    let operators = Color("Operator")
    let functional = Color("Functional")
}


extension Color {
    static var colorTheme = ColorTheme()
}
