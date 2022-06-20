//
//  ResultsView.swift
//  CalcDemo
//
//  Created by Artem Paliutin on 20/06/2022.
//

import SwiftUI

struct ResultsView: View {
    @EnvironmentObject var calcVM: CalcVM
    
    var curentOperator: String {
        switch calcVM.currentOperation {
        case .plus:
            return "+"
        case .minus:
            return "-"
        case .multiply:
            return "*"
        case .divide:
            return "/"
        case .none:
            return ""
        }
    }
    
    var body: some View {
        HStack(spacing: 10.0) {
            if let first = calcVM.firstNumber, let second = calcVM.secondNumber {
                Text(first.formatted())
                Text(curentOperator)
                Text(second.formatted())
                Text(" = ")
                Text(Double(calcVM.numberField)?.formatted() ?? "")
                    .fontWeight(.semibold)
            }
        }

        .animation(.easeInOut, value: calcVM.numberField)
        .font(.title2)
        .foregroundColor(.colorTheme.number)
    }
}










struct ResultsView_Previews: PreviewProvider {
    static var previews: some View {
        ResultsView()
            .environmentObject(CalcVM())
    }
}
