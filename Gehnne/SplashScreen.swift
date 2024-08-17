//
//  SplashScreen.swift
//  Gehnne
//
//  Created by Shomil Singh on 17/08/24.
//

import SwiftUI

struct SplashScreen: View {
    @State private var animateStrip = false
    let lightBeige = Color(red: 240/255, green: 235/255, blue: 221/255)
    let mutedGold = Color(red: 193/255, green: 179/255, blue: 136/255)
    var body: some View {
        //        Text("Gehnee")
        //            .font(.largeTitle)
        //            .fontWeight(.heavy)
        //            .fontWidth(.expanded)
        Text("Gehnne")
            .font(.system(size: 60, weight: .bold, design: .default))
            .foregroundColor(mutedGold)
            .overlay(
                GeometryReader { geometry in
                    // Slanting line inside the text bounds
                    Rectangle()
                        .fill(lightBeige)
                        .frame(width: geometry.size.width * 2.5, height: 5)
                        .rotationEffect(.degrees(-30))
                        .offset(x: animateStrip ? geometry.size.width : -geometry.size.width * 1.5)
                        
                        .onAppear {
                            withAnimation(.easeInOut(duration: 3).repeatForever(autoreverses: false)){
                                animateStrip = true
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




#Preview {
    SplashScreen()
}
