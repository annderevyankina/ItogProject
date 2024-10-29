//
//  SettingsModel.swift
//  module_project
//
//  Created by Анна on 28.10.2024.
//

import Foundation
import SwiftUI

class SettingsModel: ObservableObject {
    @Published var username: String = "Сева"
    @Published var profileImage: UIImage? = nil
}
