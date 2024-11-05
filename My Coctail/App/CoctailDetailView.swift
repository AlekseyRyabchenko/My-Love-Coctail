//
//  CoctailDetailView.swift
//  My Coctail
//
//  Created by Aleksey Ryabchenko on 11.11.2023.
//

import SwiftUI

struct CoctailDetailView: View {
    // MARK: - Properties
    
    var coctailCard: CoctailModel
    
    var textRecipte: String = "recipteCoctailDetailView"
    
    func localizeTitle() -> String {
        return NSLocalizedString(self.coctailCard.name, comment: "")
    }
    
    func localizeTitleRecipte() -> String {
        return NSLocalizedString(self.textRecipte, comment: "")
    }
        
    // MARK: - Body
    var body: some View {
        NavigationStack {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(alignment: .center, spacing: 20) {
                    
                    CoctailHeaderView(coctailCard: coctailCard)
                    
                    VStack(alignment: .leading, spacing: 20) {
                        Text(LocalizedStringKey(coctailCard.name))
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                            .foregroundStyle(coctailCard.colorGradient[1])
                        
                        Text(LocalizedStringKey(coctailCard.headline))
                            .font(.headline)
                            .multilineTextAlignment(.leading)
                        
                        IngridientsView(coctailCard: coctailCard)
                        
                        Text("\(localizeTitleRecipte()) \(localizeTitle())")
                            .fontWeight(.bold)
                            .foregroundStyle(Color.blue)
                            .padding(.horizontal, 16)
                        
                        Text(LocalizedStringKey(coctailCard.recipe))
                            .multilineTextAlignment(.leading)
                            .padding(.horizontal)
                    } //: VStack
                    .padding(.horizontal, 20)
                    .frame(maxWidth: 640, alignment: .center)
                    .padding(.bottom, 30)
                } //: VStack
            } //: ScrollView
            .ignoresSafeArea()
        } //: NavigationStack
    }
}

// MARK: - Preview
#Preview {
    CoctailDetailView(coctailCard: coctailData[4])
}
