//
//  StateBootCamp.swift
//  SwiftUIBootCamp
//
//  Created by Sohel Mahmud on 18/10/23.
//

import SwiftUI

struct StateBootCamp: View {
    
    @State var backgroundColor: Color = Color.green
    @State var myTitle: String = "My Title"
    @State var count: Int = 0
    
    var body: some View {
        ZStack{
            // background
            backgroundColor
                .ignoresSafeArea(.all)
            
            // content
            VStack(spacing: 10){
                Text(myTitle)
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                Text("Count: \(count)")
                    .font(.headline)
                    .underline()
                
                HStack(spacing: 20){
                    Button("Increase".uppercased()) {
                        backgroundColor = .blue
                        myTitle = "Button 1 pressed"
                        count += 1
                    }
                    
                    Button("Decrease".uppercased()) {
                        backgroundColor = .red
                        myTitle = "Button 2 pressed"
                        count -= 1
                    }
                }
            }
        }
        .foregroundStyle(.white)
    }
}

#Preview {
    StateBootCamp()
}
