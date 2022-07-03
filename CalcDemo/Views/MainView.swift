//
//  MainView.swift
//  CalcDemo
//
//  Created by Artem Paliutin on 19/06/2022.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        ZStack {
            Color.colorTheme.background
                .ignoresSafeArea()
            
            VStack {
                ResultsView()
                
                Spacer()
                
                NumberFieldView()
                    .padding(.vertical)
                
                NumPadView()
            }
            .padding(.vertical)
        }
    }
}










struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
            .environmentObject(CalcVM())
    }
}
