//
//  SWIFTUIExpandedListApp.swift
//  SWIFTUIExpandedList
//
//  Created by Yogini Unde on 21/05/24.
//

import SwiftUI

@main
struct SWIFTUIExpandedListApp: App {
    @StateObject var csManager = ColorSchemeManager()

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(csManager)
                .onAppear {
                    csManager.applyColorScheme()
                }

        }
    }
}
