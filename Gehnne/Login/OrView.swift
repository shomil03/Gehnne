//
//  OrView.swift
//  Gehnne
//
//  Created by Shomil Singh on 26/08/24.
//

import SwiftUI

struct OrView: View {
    var body: some View {
        HStack(alignment : .center){
            Rectangle()
                .frame(height: 1)
            Text("or")
            Rectangle()
                .frame(height: 1)
        }
    }
}

#Preview {
    OrView()
}
