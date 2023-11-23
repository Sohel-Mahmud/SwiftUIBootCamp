//
//  GroupBootcamp.swift
//  SwiftUIBootCamp
//
//  Created by Sohel Mahmud on 23/11/23.
//

import SwiftUI

struct GroupBootcamp: View {
    var body: some View {
        VStack {
            Text("Hello, world!")
            
            /// for applying stying to multiple UI
            /// use Group instead of using VStack
            /// cz it will help performance
            Group {
                Text("Hellow, world")
                Text("Hellow, world")
            }
            .font(.title)
            .foregroundStyle(.green)
        }
        .foregroundStyle(.red)
        .font(.largeTitle)
    }
}

#Preview {
    GroupBootcamp()
}
