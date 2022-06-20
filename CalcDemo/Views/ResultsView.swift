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
        HStack {
            if let first = calcVM.firstNumber, let second = calcVM.secondNumber {
                Text("\(first)")
                Text(curentOperator)
                Text("\(second)")
                
                Text("=")
                Text(calcVM.numberField)
            }
           
            
            
            
        }
    }
}










struct ResultsView_Previews: PreviewProvider {
    static var previews: some View {
        ResultsView()
            .environmentObject(CalcVM())
    }
}
