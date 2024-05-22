//
//  ColorTheme.swift
//  SWIFTUIExpandedList
//
//  Created by Yogini Unde on 21/05/24.
//

import SwiftUI

struct ColorTheme: View {
    @Environment(\.colorScheme) var current
    @State private var showModal = false
    @EnvironmentObject var csManager: ColorSchemeManager
    var body: some View {
        NavigationView {
            VStack {
                Picker("", selection: $csManager.colorScheme) {
                    Text(Constants.dark).tag(ColorScheme.dark).accessibilityLabel(Text(Constants.light))
                    Text(Constants.light).tag(ColorScheme.light).accessibilityLabel(Text(Constants.light))
                }
                .pickerStyle(SegmentedPickerStyle())
                .padding()
                Button(action: {
                    showModal.toggle()
                }) {
                }
               Spacer()
            }
            .navigationTitle("")
        }
    }
}

#Preview {
    ColorTheme()
}
