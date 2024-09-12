//
//  ButtonView.swift
//  Gehnne
//
//  Created by Shomil Singh on 25/08/24.
//

import SwiftUI

struct ButtonView: View {
    var title : String = "Button"
    var image : String = ""
    var body: some View {
        Label(title, systemImage: image)
            .frame(maxWidth: .infinity)
            .frame(height: 55)
            .background(Color.blue)
            .clipShape(RoundedRectangle(cornerRadius: 25))
//            .padding()
//            .foregroundStyle(Color.black)
            .bold()
        
    }
}

#Preview {
    ButtonView()
}
