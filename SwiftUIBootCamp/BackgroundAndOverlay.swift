//
//  OverlayBootcamp.swift
//  SwiftUIBootCamp
//
//  Created by Macuser on 11/04/2023.
//

import SwiftUI

struct BackgroundAndOverlay: View {
    var body: some View {
        VStack {
            Circle()
                .fill(Color.red)
                .frame(width: 100, height: 100)
                .overlay(
                    Text("1")
                        .font(.largeTitle)
                        .foregroundColor(.white)
                    ,alignment: .center
                )
                .background(
                    Circle()
                        .fill(Color.purple)
                        .frame(width: 110, height: 110)
            )
            
            
            Rectangle()
                .frame(width: 100, height: 100)
                .overlay(
                    Rectangle()
                        .fill(Color.blue)
                        .frame(width: 50, height: 50, alignment: .center)
                    , alignment: .center)
            
            
            
            Image(systemName: "heart.fill")
                .foregroundColor(Color.white)
                .font(.system(size: 40))
                .background(
                    Circle()
                        .fill(
                            LinearGradient(gradient: Gradient(colors: [Color.blue, Color.blue.opacity(0.9)]), startPoint: .topLeading, endPoint: .bottomLeading)
                        )
                        .frame(width: 100, height: 100, alignment: .center)
                        .shadow(color: .black.opacity(0.5), radius: 10, x: 0, y: 5)
                        .overlay(
                            Circle()
                                .fill(Color.red)
                                .frame(width: 35, height: 35)
                                .overlay(
                                    Text("5")
                                        .foregroundColor(Color.white)
                                )
                            ,alignment: .bottomTrailing
                        )

                )
                .padding(.top, 40)
        }
    }
}

struct OverlayBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundAndOverlay()
    }
}
