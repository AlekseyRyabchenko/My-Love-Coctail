//
//  CoctailCardView.swift
//  My Coctail
//
//  Created by Aleksey Ryabchenko on 11.11.2023.
//

import SwiftUI

struct CoctailCardView: View {
    // MARK: - Properties
    
    var coctailCard: CoctailModel
    
    @State private var isAnimation: Bool = false
    
    // MARK: - Body
    var body: some View {
        ZStack {
            VStack(spacing: 20) {
                Image(coctailCard.image)
                    .resizable()
                    .scaledToFit()
                    .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 8, x: 6, y: 8)
                    .scaleEffect(isAnimation ? 1.3 : 0.5)
                
                Text(LocalizedStringKey(coctailCard.name))
                    .foregroundStyle(Color(.white))
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 2, x: 2, y: 2)
                
                Text(LocalizedStringKey(coctailCard.headline))
                    .foregroundStyle(Color(.white))
                    .font(.title2)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 16)
                    .frame(maxWidth: 480)
                
                StartButtonView()
                    .padding(.vertical, 20)
                    
            } //: VStack
        } //: ZStack
        .onAppear {
            withAnimation(.easeInOut(duration: 0.9)) {
                isAnimation = true
            }
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)
        .background(LinearGradient(gradient: Gradient(colors: coctailCard.colorGradient), startPoint: .top, endPoint: .bottom))
        .ignoresSafeArea()
    }
}

// MARK: - Preview
#Preview {
    CoctailCardView(coctailCard: coctailData[0])
}
