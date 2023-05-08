//
//  WeCareApp.swift
//  WeCare
//
//

import SwiftUI

@main
struct WeCareApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationView {
                LandingView()
            }
            .preferredColorScheme(.light)
        }
    }
}
