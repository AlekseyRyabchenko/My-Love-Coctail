//
//  SettingLabelView.swift
//  My Coctail
//
//  Created by Aleksey Ryabchenko on 12.11.2023.
//

import SwiftUI

struct SettingLabelView: View {
    // MARK: - Properties
    
    var labelText: String
    var labelImage: String
    
    // MARK: - Body
    var body: some View {
        HStack {
            Text(labelText.uppercased()).fontWeight(.bold)
            Spacer()
            Image(systemName:labelImage)
        } //: HStack
    }
}


// MARK: - Preview
#Preview {
    SettingLabelView(labelText: "Settings", labelImage: "info.square")
}
