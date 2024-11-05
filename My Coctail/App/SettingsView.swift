//
//  SettingsView.swift
//  My Coctail
//
//  Created by Aleksey Ryabchenko on 12.11.2023.
//

import SwiftUI

struct SettingsView: View {
    // MARK: - Properties
    
    @Environment(\.presentationMode) var presentationMode
    
    // MARK: - Body
    var body: some View {
        NavigationStack {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 20) {
                    GroupBox(label:
                        SettingLabelView(labelText: "My Coctail", labelImage: "info.square")
                    ) {
                        Divider().padding(.vertical, 4)
                        
                        HStack(alignment: .center, spacing: 10) {
                            Image("setLogo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80, height: 80)
                                .clipShape(RoundedRectangle(cornerRadius: 9))
                            
                            Text(LocalizedStringKey("descriptionTextSettingView"))
                                .font(.callout)
                        } //: HStack
                    } //: GroupBox
                    GroupBox(label: SettingLabelView(labelText: "Development", labelImage: "wrench.and.screwdriver")) {
                        SettingDevelopItemView(role: "Developer", name: "Aleks")
                            .padding(.vertical, 0)
                        SettingDevelopItemView(role: "Designer", name: "Tatiana")
                            .padding(.vertical, 0)
                        SettingDevelopItemView(role: "Version", name: "1.0.1")
                            .padding(.vertical, 0)
                    } //: GroupBox
                } //: VStack
                .navigationTitle(Text(LocalizedStringKey("settingTitleSettingView")))
                .navigationBarTitleDisplayMode(.large)
                .navigationBarItems(trailing:
                                        Button(action: {
                    presentationMode.wrappedValue.dismiss()
                }) {
                    Image(systemName: "xmark")
                }
                )
            } //: ScrollView
            .padding()
        } //: NavigationStack
    }
}

// MARK: - Preview
#Preview {
    SettingsView()
}
