//
//  SettingsViewModel.swift
//  module_project
//
//  Created by Анна on 28.10.2024.
//

import Foundation
import SwiftUI

class SettingsViewModel: ObservableObject {
    @Published var settings = SettingsModel()
    
    func updateUsername(to newUsername: String) {
        settings.username = newUsername
    }
    
    func updateProfileImage(to newImage: UIImage?) {
        settings.profileImage = newImage
    }
}
