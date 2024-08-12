//
//  SideMenu.swift
//  Gehnne
//
//  Created by Shomil Singh on 12/08/24.
//

import SwiftUI

struct SideMenu: View {
    var body: some View {
        ZStack{
            HStack{
                VStack(alignment: .leading){
                    VStack{
                        Text("Something")
                    }
                    Spacer()
                }
                .frame(width: 270)
                .background(Color.brown)
                Spacer()
            }
            
            
            
        }
    }
}

#Preview {
    SideMenu()
}
