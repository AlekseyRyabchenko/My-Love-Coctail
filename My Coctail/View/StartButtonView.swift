//
//  StartButtonView.swift
//  My Coctail
//
//  Created by Aleksey Ryabchenko on 11.11.2023.
//

import SwiftUI

struct StartButtonView: View {
    // MARK: - Properties
    
    @AppStorage("isOnBoarding") var isOnBoarding: Bool?
    
    // MARK: - Body
    var body: some View {
        Button(action: {
            isOnBoarding = false
        }) {
            HStack(spacing: 8) {
                Text(LocalizedStringKey("startButtonText"))
                    .tint(Color.white)
                    .font(.headline)
                
                Image(systemName: "play.circle.fill")
                    .imageScale(.large)
                    .tint(Color.white)
            }
            .padding(.horizontal, 16)
            .padding(.vertical, 10)
            .background(RoundedRectangle(cornerRadius: 12).stroke(Color.white, style: StrokeStyle()))
        }
    }
}

// MARK: - Preview
#Preview {
    StartButtonView()
}
