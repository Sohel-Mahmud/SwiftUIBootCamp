//
//  TextBootcamp.swift
//  SwiftUIBootCamp
//
//  Created by Macuser on 29/03/2023.
//

import SwiftUI

struct TextBootcamp: View {
    var body: some View {
        Text("Hellow World This is Bootcamp")
//            .font(.body)
//            .fontWeight(.bold)
            .padding(5)
            .font(.system(size: 55, weight: .semibold, design: .serif))
            .fontWeight(.heavy)
            .bold()
            //.underline()
            .underline(true, pattern: .dash, color: Color.yellow)
            .strikethrough(true, pattern: .dash, color: Color.red)
            .baselineOffset(5) // line spacing
            .kerning(1.5) // letter spacing
            .multilineTextAlignment(.center)
            .foregroundColor(.green)
            .frame(width: 350, height: 200, alignment: .center)
            .border(.red, width: 2)
            .minimumScaleFactor(0.1) // allows the text to fit on frame
    }
}

struct TextBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TextBootcamp()
    }
}
