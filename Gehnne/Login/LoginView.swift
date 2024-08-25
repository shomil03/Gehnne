//
//  LoginView.swift
//  Gehnne
//
//  Created by Shomil Singh on 23/08/24.
//

import SwiftUI

struct LoginView: View {
    var body: some View {
        VStack(spacing : 45){
            TopView()
            EmailView()
            PasswordView()
            Button(action: {}, label: {
                ButtonView(title: "Sign in")
                
            })
            OrView()
            SignUp()
            Spacer()
        }
        .padding()
    }
}

#Preview {
    LoginView()
}
