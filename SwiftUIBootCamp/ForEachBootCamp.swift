//
//  ForEachBootCamp.swift
//  SwiftUIBootCamp
//
//  Created by Sohel Mahmud on 12/10/23.
//

import SwiftUI

struct ForEachBootCamp: View {
    var body: some View {
        VStack{
            ForEach(0..<10) { Index in
                Text("Hi: \(Index+1)")
            }
        }
    }
}

#Preview {
    ForEachBootCamp()
}
