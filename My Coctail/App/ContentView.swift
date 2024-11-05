//
//  ContentView.swift
//  My Coctail
//
//  Created by Aleksey Ryabchenko on 09.11.2023.
//

import SwiftUI

struct ContentView: View {
    // MARK: - Properties
    
    @State private var isShowSetting: Bool = false
    
    var coctailCard: [CoctailModel] = coctailData
    
    // MARK: - Body
    var body: some View {
        NavigationStack {
            List {
                ForEach(coctailCard) { card in
                    NavigationLink(destination: CoctailDetailView(coctailCard: card)) {
                        CoctailRowView(coctailCard: card)
                            .padding(.vertical, -5)
                    }
                }
            } //: List
            .navigationTitle(LocalizedStringKey("titleContentView"))
            .padding(.horizontal, -10)
            .navigationBarItems(trailing: Button(action: {
                isShowSetting = true
            }) {
                Image(systemName: "gearshape")
            }
                .sheet(isPresented: $isShowSetting) {
                    SettingsView()
                }
            )
        } //: NavigationStack
    }
}

// MARK: - Preview
#Preview {
    ContentView(coctailCard: coctailData)
}
