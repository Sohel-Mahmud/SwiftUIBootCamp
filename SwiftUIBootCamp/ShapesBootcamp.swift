//
//  ShapesBootcamp.swift
//  SwiftUIBootCamp
//
//  Created by Macuser on 29/03/2023.
//

import SwiftUI

struct ShapesBootcamp: View {
    var body: some View {
        //Circle()
        //Ellipse()
        //Capsule()
        Rectangle()
            //.fill(.red)
            //.foregroundColor(Color.yellow)
            //.stroke(Color.red, lineWidth: 20)
            //.trim(from: 0.2, to: 1.0)
//            .stroke(Color.orange, style: StrokeStyle(lineWidth: 10, lineCap: .round, lineJoin: .bevel, miterLimit: 10.0, dash: [40], dashPhase: 5))
            .stroke(Color.purple, lineWidth: 20)
            .frame(width: 200, height: 100, alignment: .center)
            
    }
}

struct ShapesBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ShapesBootcamp()
    }
}
