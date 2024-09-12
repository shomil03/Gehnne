//
//  SignUp.swift
//  Gehnne
//
//  Created by Shomil Singh on 26/08/24.
//

import SwiftUI

struct SignUp: View {
//    @Environment(NavigationManager.self) var navigationManager
    var body: some View {
        HStack{
            Text("Don't have an account?")
            NavigationLink(destination: CreateNewAccount(), label: {
                Text("Sign up")
                    .bold()
            })
//            Button("Sign up"){
                
//            }
//                .bold()
        }
    }
}

#Preview {
    SignUp()
}
