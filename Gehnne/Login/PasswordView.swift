//
//  PasswordView.swift
//  Gehnne
//
//  Created by Shomil Singh on 23/08/24.
//

import SwiftUI

struct PasswordView: View {
    @State var password = ""
    @Binding var loginviewmodel : LoginViewModel
    var focusedField: FocusState<Field?>.Binding
    var body: some View {
        VStack(alignment:.trailing){
        ZStack(alignment : .leading){
                SecureField("", text: $password)
                    .padding(.leading)
                    .frame(maxWidth: .infinity)
                    .frame(height: 45)
                    .background(.gray.opacity(0.3) , in: .rect(cornerRadius: 16))
//                    .onTapGesture {
//                        loginviewmodel.passKeyboard = true
//                        loginviewmodel.emailKeyboard = false
//                    }
                    .focused(focusedField , equals: .password)
                    .opacity(loginviewmodel.showPassword ? 0 : 1)
                TextField("" , text: $password)
                    .padding(.leading)
                    .frame(maxWidth: .infinity)
                    .frame(height: 45)
                    .background(.gray.opacity(0.3) , in: .rect(cornerRadius: 16))
                    .focused(focusedField , equals: .password)
                    .opacity(loginviewmodel.showPassword ? 1 : 0)
                Text("password")
                    .padding(.leading)
                    .offset(y : focusedField.wrappedValue == .password || !password.isEmpty ? -50 : 0)
                    .onTapGesture {
                        focusedField.wrappedValue = .password
                    }
                    .animation(.spring, value: focusedField.wrappedValue)
            }
            
            .overlay(alignment: .trailing){
                Button(action: {
                    withAnimation{
                        loginviewmodel.showPassword.toggle()
                    }
                }, label: {
                    Label("", systemImage: loginviewmodel.showPassword ? "eye" : "eye.slash")
                        .foregroundStyle(Color.blue)
//                        .labelsHidden()
//                        .contentTransition(.symbolEffect(.replace))
//                        .onTapGesture {
//                            withAnimation{
//                                loginviewmodel.showPassword.toggle()
//                            }
//                        }
                }
                )
//                Label("", systemImage: loginviewmodel.showPassword ? "eye" : "eye.slash")
//                    .labelsHidden()
//                    .contentTransition(.symbolEffect(.replace))
//                    .onTapGesture {
//                        withAnimation{
//                            loginviewmodel.showPassword.toggle()
//                        }
//                    }
            }
//            .padding()
            
            Button("Forget password?"){
                
            }
            .font(.caption)
            .padding()
        }
    }
}

struct PasswordViewPreviewWrapper: View {
    @FocusState private var focusedField: Field?
    @State private var loginViewModel = LoginViewModel()
    
    var body: some View {
        PasswordView(loginviewmodel: $loginViewModel, focusedField: ($focusedField))
    }
}

#Preview {
    PasswordViewPreviewWrapper()
}
