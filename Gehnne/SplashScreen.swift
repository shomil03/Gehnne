//
//  SplashScreen.swift
//  Gehnne
//
//  Created by Shomil Singh on 17/08/24.
//

import SwiftUI

struct SplashScreen: View {
    @State private var animateStrip = false
    @State private var navigate = false
    let lightBeige = Color(red: 240/255, green: 235/255, blue: 221/255)
    let mutedGold = Color(red: 193/255, green: 179/255, blue: 136/255)
    let silver = Color(red: 192/255, green: 192/255, blue: 192/255)
    let gold = Color(red: 227/255, green: 165/255, blue: 74/255)
    let deepBrown = Color(red: 89/255, green: 54/255, blue: 44/255)
    var body: some View {
        //        Text("Gehnee")
        //            .font(.largeTitle)
        //            .fontWeight(.heavy)
        //            .fontWidth(.expanded)
        if(!navigate){
            VStack {
                Text("GEHNNE")
                    .font(.system(size: 60, weight: .bold, design: .default))
                    .foregroundColor(mutedGold)
//                    .shadow(color: deepBrown, radius: 20)
                    .overlay(
                        GeometryReader { geometry in
                            Rectangle()
                                .fill(lightBeige)
                                .frame(width: geometry.size.width * 2.5, height: 5)
                                .rotationEffect(.degrees(-30))
                                .offset(x: animateStrip ? geometry.size.width : -geometry.size.width * 1.5)
                            
                                .onAppear {
                                    withAnimation(.easeInOut(duration: 3).repeatForever(autoreverses: false)){
                                        animateStrip = true
                                        DispatchQueue.main.asyncAfter(deadline: .now()+3){
                                            navigate = true
                                        }
                                    }
                                }
                        }
                            .mask(
                                Text("Gehnne")
                                    .font(.system(size: 60, weight: .bold, design: .default))
                            ) // Mask the strip to the text bounds
                    )
            }
        }
        else{
            LoginView()
        }
    
            
    }
}




#Preview {
    SplashScreen()
}
