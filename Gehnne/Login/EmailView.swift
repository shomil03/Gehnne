//
//  EmailView.swift
//  Gehnne
//
//  Created by Shomil Singh on 23/08/24.
//

import SwiftUI

struct EmailView: View {
    @State var title : String = ""
    @FocusState var isActive
    var body: some View {
        
        ZStack(alignment: .leading){
            TextField("", text: $title)
                .padding(.leading)
                .frame(maxWidth: .infinity)
                .frame(height: 45)
                .background(.gray.opacity(0.3) , in: .rect(cornerRadius: 16))
                .focused($isActive)
            Text("Email")
                .padding(.leading)
                .offset(y : (isActive || !title.isEmpty) ? -50 : 0)
                .animation(.spring, value: isActive)
                .onTapGesture {
                    isActive = true
                }   
        }
    }
}

#Preview {
    EmailView()
}
