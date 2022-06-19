//
//  CalcDemoApp.swift
//  CalcDemo
//
//  Created by Artem Paliutin on 19/06/2022.
//

import SwiftUI

@main
struct CalcDemoApp: App {
    @StateObject var calcVM = CalcVM()
    
    var body: some Scene {
        WindowGroup {
            MainView()
                .environmentObject(calcVM)
        }
    }
}
