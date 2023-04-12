//
//  BackgroundAndOverlayBootcamp.swift
//  SwiftUIBootCamp
//
//  Created by Macuser on 07/04/2023.
//

import SwiftUI

struct BackgroundBootcamp: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .background(
                Circle()
                    .fill(Color.blue)
                    .frame(width: 100, height: 100, alignment: .center)

            )
            .background(
                Circle()
                    .fill(Color.red)
                    .frame(width: 120, height: 120, alignment: .center)

            )
    }
}

struct BackgroundAndOverlayBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundBootcamp()
    }
}
