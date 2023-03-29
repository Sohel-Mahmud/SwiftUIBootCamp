//
//  TextBootcamp.swift
//  SwiftUIBootCamp
//
//  Created by Macuser on 29/03/2023.
//

import SwiftUI

struct TextBootcamp: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .font(.body)
//            .fontWeight(.bold)
            .fontWeight(.heavy)
            .bold()
            //.underline()
            .underline(true, pattern: .dash, color: Color.yellow)
            .strikethrough(true, pattern: .dash, color: Color.red)
            .italic(true)
    }
}

struct TextBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TextBootcamp()
    }
}
