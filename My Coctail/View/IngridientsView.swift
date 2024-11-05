//
//  CompositionView.swift
//  My Coctail
//
//  Created by Aleksey Ryabchenko on 11.11.2023.
//

import SwiftUI

struct IngridientsView: View {
    // MARK: - Properties
    
    var coctailCard: CoctailModel
    
    // MARK: - Body
    var body: some View {
        GroupBox {
            DisclosureGroup(LocalizedStringKey("ingridientsText")) {
                ForEach(0 ..< coctailCard.ingridients.count, id: \.self) { item in
                    
                    Divider().padding(.vertical, 2)
                    
                    HStack {
                        Group {
                            Text(LocalizedStringKey(coctailCard.ingridients[item]))
                        } //: HStack
                        .foregroundStyle(Color.blue)
                        .font(Font.system(.body).bold())
                        
                        Spacer(minLength: 25)
                        
                        Text(LocalizedStringKey(coctailCard.numberOfIngridients[item]))
                            .font(Font.system(.body).bold())
                    } //: HStack
                } //: ForEach
            } //: DisclosureGroup
        } //: GroupBox
    }
}

// MARK: - Preview
#Preview {
    IngridientsView(coctailCard: coctailData[0])
}
