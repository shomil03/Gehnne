//
//  ContentView.swift
//  Gehnne
//
//  Created by Shomil Singh on 12/08/24.
//

import SwiftUI

struct ContentView: View {
    let lightBeige = Color(red: 240/255, green: 235/255, blue: 221/255)
    let deepBrown = Color(red: 89/255, green: 54/255, blue: 44/255)
    let mutedGold = Color(red: 193/255, green: 179/255, blue: 136/255)
    let sageGreen = Color(red: 189/255, green: 204/255, blue: 187/255)
    let silver = Color(red: 192/255, green: 192/255, blue: 192/255)
    @State var viewmodel = ViewModel()
    
    var body: some View {
        
        NavigationStack{
            ZStack{
                ZStack{
//                    LinearGradient(colors: [lightBeige , mutedGold], startPoint: .,  endPoint: .bottomTrailing)
//                        .ignoresSafeArea()
                    
                    VStack{
                        
                        HomeTopBar(viewmodel: $viewmodel)
                        SearchBar()
                        ScrollView{
                            LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible())]){
                                ForEach(viewmodel.jewellerySet , id: \.self){image in
                                    Image(image)
                                        .resizable()
                                        .frame(width: 150, height: 150)
                                        .scaledToFit()
                                        .padding(.vertical)
                                    
                                }
                            }
                        }
                        Spacer()
                    }
                }
                if(viewmodel.isShowingSlideMenu){
                    HStack{
                        SideMenu()
                        Color.secondary.opacity(0.01)
                            .ignoresSafeArea()
                            .padding(.leading , -8)
                            .onTapGesture {
                                withAnimation(.easeOut){
                                    viewmodel.isShowingSlideMenu = false
                                }
                            }
                    }
                    .transition(.move(edge: .leading))
                }
            }
            
        }
        }


}

#Preview {
    ContentView()
}
