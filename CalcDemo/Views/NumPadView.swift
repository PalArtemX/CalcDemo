//
//  NumPadView.swift
//  CalcDemo
//
//  Created by Artem Paliutin on 19/06/2022.
//

import SwiftUI

struct NumPadView: View {
    var body: some View {
        Grid(horizontalSpacing: 15, verticalSpacing: 15) {
            ForEach(NumPad.grid, id: \.self) { numes in
                GridRow {
                    ForEach(numes, id: \.self) { num in
                        NumButtonView(num: num) {
                            print("🔘 Press >> |\(num)|")
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
    }
}
