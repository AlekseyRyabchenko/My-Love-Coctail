//
//  CoctailRowView.swift
//  My Coctail
//
//  Created by Aleksey Ryabchenko on 11.11.2023.
//

import SwiftUI

struct CoctailRowView: View {
    // MARK: - Properties
    
    var coctailCard: CoctailModel
    
    // MARK: - Body
    var body: some View {
        HStack(spacing: 5) {
            Image(coctailCard.image)
                .renderingMode(.original)
                .resizable()
                .scaledToFit()
                .frame(width: 80, height: 80, alignment: .center)
                .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.3),radius: 3, x: 2, y: 2)
                .background(LinearGradient(gradient: Gradient(colors: coctailCard.colorGradient), startPoint: .top, endPoint: .bottom))
                .clipShape(RoundedRectangle(cornerRadius: 9))
            
            VStack(alignment: .leading, spacing: 5) {
                Text(LocalizedStringKey(coctailCard.name))
                    .font(.title2)
                    .fontWeight(.bold)
                Text(LocalizedStringKey(coctailCard.headline))
                    .font(.caption)
                    .foregroundStyle(Color.secondary)
            } //: VStack
            .padding()
        } //: HStack
    }
}

// MARK: - Preview
#Preview {
    CoctailRowView(coctailCard: coctailData[0])
}
