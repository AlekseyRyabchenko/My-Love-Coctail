//
//  OnboardingView.swift
//  My Coctail
//
//  Created by Aleksey Ryabchenko on 11.11.2023.
//

import SwiftUI

struct OnboardingView: View {
    // MARK: - Properties
    
    var coctailCard: [CoctailModel] = coctailData
    
    // MARK: - Body
    var body: some View {
        TabView {
            ForEach(coctailCard[0...9]) { card in
                CoctailCardView(coctailCard: card)
            } //: ForEach
        } //: TabView
        .tabViewStyle(PageTabViewStyle())
        .ignoresSafeArea()
    }
}

// MARK: - Preview
#Preview {
    OnboardingView()
}
