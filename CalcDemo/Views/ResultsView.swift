//
//  ResultsView.swift
//  CalcDemo
//
//  Created by Artem Paliutin on 20/06/2022.
//

import SwiftUI

struct ResultsView: View {
    @EnvironmentObject var calcVM: CalcVM
    
    var currentOperator: String {
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
            return "|"
        }
    }
    
    var body: some View {
        
        HStack(spacing: 10.0) {
            
            if let first = calcVM.firstNumber {
                Text(first.formatted())
            } else {
                Text("x")
                    .opacity(0.5)
            }
            
            Text(currentOperator)
            
            if let second = calcVM.secondNumber {
                Text(second.formatted())
            } else {
                Text("y")
                    .opacity(0.5)
            }
            
            Text(" = ")
            
            if calcVM.showEqualResult {
                Text(Double(calcVM.numberField)?.formatted() ?? "")
                    .fontWeight(.semibold)
            } else {
                Text("result")
                    .fontWeight(.semibold)
                    .opacity(0.5)
            }
            
        }
        .padding()
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
