//
//  PaddingBootcamp.swift
//  SwiftUIBootCamp
//
//  Created by Macuser on 12/04/2023.
//

import SwiftUI

struct PaddingBootcamp: View {
    var body: some View {
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
    }
}

struct PaddingBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        PaddingBootcamp()
    }
}
