//
//  LaunchScreen.swift
//  SkyCast
//
//  Created by Andrey Doroshko on 10/30/24.
//

import SwiftUI

struct LaunchScreen: View {
    var body: some View {
        ZStack {
            // Cloudy background image
            Image("Clouds")
                .resizable()
                .scaledToFill()
                .edgesIgnoringSafeArea(.all)
                .blur(radius: 20)
            
            // Content on top of the blurry background
            VStack {
                
            }
            .padding()
        }
    }
}
