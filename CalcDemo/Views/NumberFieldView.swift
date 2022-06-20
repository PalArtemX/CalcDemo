//
//  NumberFieldView.swift
//  CalcDemo
//
//  Created by Artem Paliutin on 19/06/2022.
//

import SwiftUI

struct NumberFieldView: View {
    @EnvironmentObject var calcVM: CalcVM
    
    var body: some View {
        HStack {
            Spacer()
            Text(Double(calcVM.numberField)?.formatted() ?? "0")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .padding(.vertical)
                .foregroundColor(.primary.opacity(0.7))
                .padding(.horizontal)
        }
        .frame(maxWidth: .infinity)
        .background(Color.colorTheme.operators.gradient.opacity(0.1))
    }
}










struct NumberFieldView_Previews: PreviewProvider {
    static var previews: some View {
        NumberFieldView()
            .environmentObject(CalcVM())
    }
}
