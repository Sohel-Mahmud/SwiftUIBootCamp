//
//  ViewThatFits.swift
//  SwiftUIBootCamp
//
//  Created by Sohel Mahmud on 24/11/23.
//

import SwiftUI

struct ViewThatFits: View {
    var body: some View {
        ZStack {
            Color.red.ignoresSafeArea()
            
           
            
        }
        .frame(height: 300)
        .padding(50)
        .font(.headline)
    }
}

#Preview {
    ViewThatFits()
}
