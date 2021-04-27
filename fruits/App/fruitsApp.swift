//
//  fruitsApp.swift
//  fruits
//
//  Created by jigar dave on 21/04/21.
//

import SwiftUI

@main
struct fruitsApp: App {
    @AppStorage ("isOnboarding") var isOnboarding: Bool = true
    
    var body: some Scene {
        WindowGroup {
            
            if isOnboarding {
                OnboardingView()
            }
            else{
                ContentView()
            }
        }
    }
}
