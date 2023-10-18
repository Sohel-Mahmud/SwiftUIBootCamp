//
//  ButtonsBootCamp.swift
//  SwiftUIBootCamp
//
//  Created by Sohel Mahmud on 18/10/23.
//

import SwiftUI

struct ButtonsBootCamp: View {
    
    @State var title: String = "This is my title"
    
    var body: some View {
        VStack(spacing: 20){
            Text(title)
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
            
            Button("Press me") {
                self.title = "Button #1 pressed"
            }
            .accentColor(.red)
            
            Button(action: {
                self.title = "Button #2 pressed"
            }, label: {
                Text("Save".uppercased())
                    .font(.headline)
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                    .padding()
                    .padding(.horizontal, 20)
                    .background(
                        Color.blue
                            .cornerRadius(10)
                            .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                    )
            })
            
            Button(action: {
                self.title = "Button #3 pressed"
            }, label: {
                Circle()
                    .fill(.white)
                    .frame(width: 75, height: 75, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                    .overlay(
                        Image(systemName: "heart.fill")
                            .font(.largeTitle)
                            .foregroundColor(.red)
                    )
                
            })
            
            Button(action: {
                self.title = "Button #4 pressed"
            }, label: {
                Text("Finish".uppercased())
                    .font(.caption)
                    .bold()
                    .foregroundStyle(.gray)
                    .padding()
                    .padding(.horizontal, /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                    .background(
                        Capsule()
                            .stroke(/*@START_MENU_TOKEN@*/Color.blue/*@END_MENU_TOKEN@*/, lineWidth: 2.0)
                    )
            })
        }
    }
}

#Preview {
    ButtonsBootCamp()
}
