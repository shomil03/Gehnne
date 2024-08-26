//
//  LoginViewModel.swift
//  Gehnne
//
//  Created by Shomil Singh on 26/08/24.
//

import Foundation
import SwiftUI

enum Field {
    case username, password
}

@Observable
class LoginViewModel{
    var emailKeyboard = false
    var passKeyboard = false
}
