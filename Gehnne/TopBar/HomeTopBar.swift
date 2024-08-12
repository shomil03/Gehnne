//
//  TopBar.swift
//  Gehnne
//
//  Created by Shomil Singh on 12/08/24.
//

import SwiftUI

struct HomeTopBar: View {
    @Binding var viewmodel : ViewModel
    var body: some View {
        HStack{
            SlideMenu()
                .padding(.horizontal)
                .onTapGesture {
                    withAnimation{
                        viewmodel.isShowingSlideMenu = true
                    }
                }
            TitleView()
            Spacer()
            OrderList()
                .padding()
        }
        .foregroundStyle(Color(red: 58/255, green:  58/255, blue: 60/255))
    }
}

#Preview {
    HomeTopBar(viewmodel: .constant(ViewModel()))
}
