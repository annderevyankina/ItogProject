//
//  ItogProjectApp.swift
//  ItogProject
//
//  Created by Анна on 28.10.2024.
//

import SwiftUI

@main
struct ItogProjectApp: App {
    @StateObject private var settingsViewModel = SettingsViewModel()

    var body: some Scene {
        WindowGroup {
            SplashScreenView()
        }
    }
}
