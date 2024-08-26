//
//  EmailView.swift
//  Gehnne
//
//  Created by Shomil Singh on 23/08/24.
//

import SwiftUI

struct EmailView: View {
    var focusedField: FocusState<Field?>.Binding
    @State var title : String = ""
    @Binding var loginviewmodel : LoginViewModel
    @FocusState var isActive
    var body: some View {
        
        ZStack(alignment: .leading){
            TextField("", text: $title)
                .padding(.leading)
                .frame(maxWidth: .infinity)
                .frame(height: 45)
                .background(.gray.opacity(0.3) , in: .rect(cornerRadius: 16))
                .focused(focusedField , equals: .username)
            Text("Email")
                .padding(.leading)
                .offset(y : (focusedField.wrappedValue == .username || !title.isEmpty) ? -50 : 0)
                .animation(.spring, value: focusedField.wrappedValue)
                .onTapGesture {
                    focusedField.wrappedValue = .username
                }
        }
       
    }
}

struct EmailViewPreviewWrapper: View {
    @FocusState private var focusedField: Field?
    @State private var loginViewModel = LoginViewModel()
    
    var body: some View {
        EmailView(focusedField: ($focusedField), loginviewmodel: $loginViewModel)
    }
}

#Preview {
    EmailViewPreviewWrapper()
}
