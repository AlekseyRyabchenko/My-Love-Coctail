//
//  My_CoctailApp.swift
//  My Coctail
//
//  Created by Aleksey Ryabchenko on 09.11.2023.
//

import SwiftUI

@main
struct My_CoctailApp: App {
    
    @AppStorage("isOnBoarding") var isOnBoarding: Bool = true
    
    var body: some Scene {
        WindowGroup {
            if isOnBoarding {
                OnboardingView()
            } else {
                ContentView()
            }
        }
    }
}
