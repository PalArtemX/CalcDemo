//
//  NumButtonView.swift
//  CalcDemo
//
//  Created by Artem Paliutin on 19/06/2022.
//

import SwiftUI

struct NumButtonView: View {
    let numpad: NumPad
    let action: () -> ()
    
    var color: Color {
        switch numpad {
        case .one, .two, .three, .four, .five, .six, .seven, .eight, .nine, .zero, .point, .remove:
            return .colorTheme.number
        case .divide, .equally, .multiply, .minus, .plus:
            return .colorTheme.operators
        case .c, .plusMinus, .percent:
            return .colorTheme.functional
        }
    }
    
    init(num numpad: NumPad, action: @escaping () -> Void) {
        self.numpad = numpad
        self.action = action
    }
    
    var body: some View {
        Button {
            action()
        } label: {
            Image(systemName: numpad.systemName)
                .symbolRenderingMode(.hierarchical)
                .font(.largeTitle)
                .foregroundColor(color)
                .padding()
                .background(color.opacity(0.1))
                .clipShape(Circle())
        }
    }
}










struct NumButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.colorTheme.background
                .ignoresSafeArea()
            VStack {
                NumButtonView(num: .one, action: {})
                NumButtonView(num: .plus, action: {})
                NumButtonView(num: .c, action: {})
                NumButtonView(num: .remove, action: {})
            }
        }
    }
}
