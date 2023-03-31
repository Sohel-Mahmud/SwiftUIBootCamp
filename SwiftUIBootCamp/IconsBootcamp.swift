//
//  IconsBootcamp.swift
//  SwiftUIBootCamp
//
//  Created by Macuser on 31/03/2023.
//

import SwiftUI

struct IconsBootcamp: View {
    var body: some View {
        Image(systemName: "heart.fill")
            //.renderingMode(.template)
            //.font(.largeTitle)
            //.font(.system(size: 200))
            .resizable()
            //.aspectRatio(contentMode: .fit)
            .scaledToFit()
            .foregroundColor(.red)
            .frame(width: 300, height: 300)
            .border(.black, width: 1)
            .clipped() // clippes anything beyond frame
    }
}

struct IconsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        IconsBootcamp()
    }
}
