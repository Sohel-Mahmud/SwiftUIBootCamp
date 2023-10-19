//
//  FunctionViewBootcamp.swift
//  SwiftUIBootCamp
//
//  Created by Sohel Mahmud on 19/10/23.
//

import SwiftUI

struct FunctionViewBootcamp: View {
    
    @State var backgroundColor: Color = Color.pink
    
    var body: some View {
        ZStack{
            // Background
            backgroundColor
                .ignoresSafeArea()
            
            //content
            contentLayer
        }
    }
    
    func buttonPressed(){
        backgroundColor = Color.green
    }
    
    var contentLayer: some View{
        VStack{
            Text("Title")
                .font(.largeTitle)
            
            Button(action: {
                buttonPressed()
                
            }, label: {
                Text("Press Me")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .foregroundStyle(.white)
                    .padding()
                    .background(Color.black)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
            })
        }
    }
}

#Preview {
    FunctionViewBootcamp()
}
