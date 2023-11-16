//
//  BackgroundMaterialsBootcamp.swift
//  SwiftUIBootCamp
//
//  Created by Sohel Mahmud on 16/11/23.
//

import SwiftUI

struct BackgroundMaterialsBootcamp: View {
    var body: some View {
        VStack {
            Spacer()
            
            VStack {
                RoundedRectangle(cornerRadius: 10, style: .continuous)
                    .frame(width: 55, height: 4)
                    .padding()
                Spacer()
            }
            .frame(height: 350)
            .frame(maxWidth: .infinity)
            .background(.thinMaterial)
            .cornerRadius(30)
        }
        .background(
            Image("profile")
                .resizable()
                .scaledToFill()
        )
        .ignoresSafeArea()
    }
}

#Preview {
    BackgroundMaterialsBootcamp()
}
