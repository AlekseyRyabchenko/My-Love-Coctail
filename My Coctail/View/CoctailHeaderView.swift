//
//  CoctailHeaderView.swift
//  My Coctail
//
//  Created by Aleksey Ryabchenko on 11.11.2023.
//

import SwiftUI

struct CoctailHeaderView: View {
    // MARK: - Properties
    
    var coctailCard: CoctailModel
    
    @State private var isAnimation: Bool = false
    
    // MARK: - Body
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: coctailCard.colorGradient), startPoint: .topLeading, endPoint: .bottomTrailing)
            
            Image(coctailCard.image)
                .resizable()
                .scaledToFit()
                .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 8, x: 6, y: 8)
                .padding(.vertical, 20)
                .scaleEffect(isAnimation ? 1.0 : 0.6)
        } //: ZStack
        .frame(height: 440)
        .onAppear() {
            withAnimation(.easeInOut(duration: 0.9)) {
                isAnimation = true
            }
        }
    }
}

// MARK: - Preview
#Preview {
    CoctailHeaderView(coctailCard: coctailData[0])
}
