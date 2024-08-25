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
    @FocusState var isActive
    var body: some View {
        VStack(alignment:.trailing){
        ZStack(alignment : .leading){
                SecureField("", text: $password)
                    .padding(.leading)
                    .frame(maxWidth: .infinity)
                    .frame(height: 45)
                    .background(.gray.opacity(0.3) , in: .rect(cornerRadius: 16))
                    .focused($isActive)
                    .opacity(showPassword ? 0 : 1)
                TextField("" , text: $password)
                    .padding(.leading)
                    .frame(maxWidth: .infinity)
                    .frame(height: 45)
                    .background(.gray.opacity(0.3) , in: .rect(cornerRadius: 16))
                    .focused($isActive)
                    .opacity(showPassword ? 1 : 0)
                Text("password")
                    .padding(.leading)
                    .offset(y : isActive || !password.isEmpty ? -50 : 0)
                    .onTapGesture {
                        isActive = true
                    }
                    .animation(.spring, value: isActive)
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

#Preview {
    PasswordView()
}
