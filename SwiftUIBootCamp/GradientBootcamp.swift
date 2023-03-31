//
//  GradientBootcamp.swift
//  SwiftUIBootCamp
//
//  Created by Macuser on 31/03/2023.
//

import SwiftUI

struct GradientBootcamp: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 20)
            .fill(
//                LinearGradient(colors: [Color.red, Color.blue], startPoint: .leading, endPoint: .trailing)
                //                LinearGradient(gradient: Gradient(colors: [Color.red, Color.blue, Color.yellow]), startPoint: .topLeading, endPoint: .trailing)
//                RadialGradient(
//                    gradient: Gradient(colors: [Color.cyan, Color.blue]),
//                    center: .center,
//                    startRadius: 5,
//                    endRadius: 150)
                AngularGradient(
                    gradient: Gradient(colors: [Color.red, Color.blue]),
                    center: .center,
                    startAngle: .degrees(45),
                    endAngle: .degrees(90))
            )
        
            .frame(width: 250, height: 150)
            
    }
}

struct GradientBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        GradientBootcamp()
    }
}
