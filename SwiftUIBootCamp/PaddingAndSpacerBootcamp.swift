//
//  PaddingBootcamp.swift
//  SwiftUIBootCamp
//
//  Created by Macuser on 12/04/2023.
//

import SwiftUI

struct PaddingAndSpacerBootcamp: View {
    var body: some View {
        VStack {
            
            VStack(alignment: .leading) {
                
                HStack(alignment: .center) {
                    
                    Text("Hello world")
                        .font(.largeTitle)
                        .fontWeight(.semibold)
                    
                    Spacer()
                        .frame(width: 50)
                    
                    Image(systemName: "house")
                    
                }
                .padding(.bottom, 10)
                
                Text("This is a description of what we will do on this screen, It is multiple lines and we will align the text to the leading edge.")
                
            }
            .padding()
            .background(
                Color.white
                    .cornerRadius(10)
                    .shadow(color: Color.black.opacity(0.3), radius: 10, x: 0, y: 5)
            )
            .padding(.horizontal, 10)
            
            Spacer()
                .frame(height: 20)
            
            // spacer
            HStack{
                Rectangle()
                    .fill(Color.green)
                    .frame(width: 50, height: 50)
                
                Spacer()
                    .frame(height: 10)
                    .background(Color.red)
                
                Rectangle()
                    .fill(Color.red)
                    .frame(width: 50, height: 50)
                
                Spacer()
                    .frame(height: 10)
                    .background(Color.red)
                
                Rectangle()
                    .frame(width: 50, height: 50)
            }
            .padding(.horizontal, 100)
        }
    }
}

struct PaddingBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        PaddingAndSpacerBootcamp()
    }
}
