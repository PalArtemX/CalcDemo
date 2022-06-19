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
            // MARK: - Background
            Color.colorTheme.background
                .ignoresSafeArea()
            
            VStack {
                Spacer()
                // MARK: - NumberFieldView
                NumberFieldView()
                    .padding(.vertical)
                
                // MARK: - NumPadView
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
