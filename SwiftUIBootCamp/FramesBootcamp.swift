//
//  FramesBootcamp.swift
//  SwiftUIBootCamp
//
//  Created by Macuser on 31/03/2023.
//

import SwiftUI

struct FramesBootcamp: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .background(Color.green)
            //.frame(width: 300, height: 300, alignment: .center)
            .frame(maxWidth: .infinity, alignment: .trailing)
            .background(Color.red)
            .frame(height: 100)
            .background(Color.yellow)
    }
}

struct FramesBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        FramesBootcamp()
    }
}
