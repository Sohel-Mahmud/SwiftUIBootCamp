//
//  SafeAreaBootcamp.swift
//  SwiftUIBootCamp
//
//  Created by Sohel Mahmud on 18/10/23.
//

import SwiftUI

struct SafeAreaBootcamp: View {
    var body: some View {
        ScrollView {
            VStack {
                Text("Title goes here")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
                    
                ForEach(0..<20) { Index in
                    RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                        .fill(Color.white)
                        .frame(height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
                        .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                        .padding(15)
                }
            }
        /// use edgesIgnoringSafeArea for red
        /// color to go to safearea
        /// Background works like view, it can inherit other UI
        }.background(
            Color.red
                //.edgesIgnoringSafeArea(.all) // old
                .ignoresSafeArea()
        )
    }
}

#Preview {
    SafeAreaBootcamp()
}
