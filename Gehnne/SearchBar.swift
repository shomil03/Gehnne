//
//  SearchBar.swift
//  Gehnne
//
//  Created by Shomil Singh on 12/08/24.
//

import SwiftUI

struct SearchBar: View {
    var body: some View {
        HStack{
            Label("Search", systemImage: "magnifyingglass")
        }
        .frame(maxWidth: .infinity)
        .padding()
        .border(Color.black)
        .padding()
        
    }
}

#Preview {
    SearchBar()
}
