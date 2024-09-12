//
//  LoginView.swift
//  Gehnne
//
//  Created by Shomil Singh on 23/08/24.
//

import SwiftUI

struct LoginView: View {
    @State var loginviewmodel = LoginViewModel()
    @FocusState private var focusedField: Field?
    var body: some View {
        NavigationStack{
            ScrollView{
                VStack(spacing : 45){
                    TopView()
                    EmailView( focusedField: $focusedField, loginviewmodel: $loginviewmodel)
                    PasswordView(loginviewmodel: $loginviewmodel, focusedField: $focusedField)
                    Button(action: {}, label: {
                        ButtonView(title: "Sign in")
                            .foregroundStyle(Color.primary)
                    })
                    OrView()
                    SignUp()
                    Spacer()
                }
                .padding()
            }
            .scrollDisabled(true)
            .ignoresSafeArea(.keyboard)
            .toolbar{
                ToolbarItem(placement: .keyboard){
                    HStack{
                        Spacer()
                        Button("Done"){
                            loginviewmodel.emailKeyboard = false
                            loginviewmodel.passKeyboard = false
                            hideKeyboard()
                        }
                        .padding(.trailing)
                    }
                }
            }
            
            
        }
    }

}
extension View {
    func hideKeyboard() {
        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}

#Preview {
    LoginView()
}
