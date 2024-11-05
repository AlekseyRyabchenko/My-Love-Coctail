//
//  SettingDevelopItemView.swift
//  My Coctail
//
//  Created by Aleksey Ryabchenko on 12.11.2023.
//

import SwiftUI

struct SettingDevelopItemView: View {
    // MARK: - Properties
    
    var role: String
    var name: String
    
    // MARK: - Body
    var body: some View {
        VStack {
            Divider().padding(.vertical, 0)
            HStack {
                Text(role)
                    .foregroundStyle(Color.cyan)
                    .font(.headline)
                    .padding()
                
                Spacer()
                
                Text(name)
                    .font(.headline)
                    .padding()
            }
        }
    }
}


// MARK: - Preview
#Preview {
    SettingDevelopItemView(role: "Developer", name: "Aleks")
}
