//
//  NumPadView.swift
//  CalcDemo
//
//  Created by Artem Paliutin on 19/06/2022.
//

import SwiftUI

struct NumPadView: View {
    @EnvironmentObject var calcVM: CalcVM
    
    var body: some View {
        Grid(horizontalSpacing: 15, verticalSpacing: 15) {
            ForEach(NumPad.grid, id: \.self) { rows in
                
                GridRow {
                    ForEach(rows, id: \.self) { symbol in
                        
                        NumButtonView(symbol: symbol) {
                            calcVM.didTap(symbol: symbol)
                            print("🔘 Press >> |\(symbol)|")
                        }
                        
                    }
                }
                
            }
        }
    }
}










struct NumPadView_Previews: PreviewProvider {
    static var previews: some View {
        NumPadView()
            .environmentObject(CalcVM())
    }
}
