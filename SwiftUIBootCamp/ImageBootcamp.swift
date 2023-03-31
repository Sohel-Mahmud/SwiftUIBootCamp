//
//  ImageBootcamp.swift
//  SwiftUIBootCamp
//
//  Created by Macuser on 31/03/2023.
//

import SwiftUI

struct ImageBootcamp: View {
    var body: some View {
        Image("google")
            .renderingMode(.template)
            .resizable()
            //.frame(width: 300, height: 200)
            .scaledToFill()
            .frame(width: 300, height: 200)
            .foregroundColor(.yellow) // have to use renderingMode
            //.clipped()
            //.cornerRadius(20)
//            .clipShape(
//                //Circle()
//                //Rectangle()
//                //Ellipse()
//            )
    }
}

struct ImageBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ImageBootcamp()
    }
}
