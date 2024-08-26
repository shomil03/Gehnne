//
//  PasswordView.swift
//  Gehnne
//
//  Created by Shomil Singh on 23/08/24.
//

import SwiftUI

struct PasswordView: View {
    @State var password = ""
    @State var showPassword = false
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
                    .opacity(showPassword ? 0 : 1)
                TextField("" , text: $password)
                    .padding(.leading)
                    .frame(maxWidth: .infinity)
                    .frame(height: 45)
                    .background(.gray.opacity(0.3) , in: .rect(cornerRadius: 16))
                    .focused(focusedField , equals: .password)
                    .opacity(showPassword ? 1 : 0)
                Text("password")
                    .padding(.leading)
                    .offset(y : focusedField.wrappedValue == .password || !password.isEmpty ? -50 : 0)
                    .onTapGesture {
                        focusedField.wrappedValue = .password
                    }
                    .animation(.spring, value: focusedField.wrappedValue)
            }
            
            .overlay(alignment: .trailing){
                Label("", systemImage: showPassword ? "eye" : "eye.slash")
                    .labelsHidden()
                    .contentTransition(.symbolEffect(.replace))
                    .onTapGesture {
                        withAnimation{
                            showPassword.toggle()
                        }
                    }
            }
            
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
        EmailView(focusedField: ($focusedField), loginviewmodel: $loginViewModel)
    }
}

#Preview {
    PasswordViewPreviewWrapper()
}
