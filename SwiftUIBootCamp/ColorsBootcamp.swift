//
//  ColorsBootcamp.swift
//  SwiftUIBootCamp
//
//  Created by Macuser on 30/03/2023.
//

import SwiftUI

struct ColorsBootcamp: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 20)
            .fill(
                Color("CustomColor")
            )
            .frame(width: 300, height: 200)
            .shadow(color: Color.red.opacity(0.3), radius: 10, x: -20, y: -20)
            .shadow(color: Color("CustomColor").opacity(0.3), radius: 10, x: 20, y: 20)
        
    }
}

struct ColorsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ColorsBootcamp()
    }
}
