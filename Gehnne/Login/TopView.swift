//
//  TopView.swift
//  Gehnne
//
//  Created by Shomil Singh on 25/08/24.
//

import SwiftUI

struct TopView: View {
    var heading : String = "Welcome back"
    var details : String = "Please sign in to your account"
    var body: some View {
        HStack{
            VStack(alignment : .leading , spacing: 20){
                Text(heading)
                    .font(.title)
                    .bold()
                Text(details)
                    .font(.headline)
            }
            .padding()
            Spacer()
                
        }
        
    }
}

#Preview {
    TopView()
}
