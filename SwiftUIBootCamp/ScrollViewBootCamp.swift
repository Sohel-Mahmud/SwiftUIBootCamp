//
//  ScrollViewBootCamp.swift
//  SwiftUIBootCamp
//
//  Created by Sohel Mahmud on 16/10/23.
//

import SwiftUI

struct ScrollViewBootCamp: View {
    var body: some View {
        ScrollView(.vertical, showsIndicators: true, content: {
            LazyVStack{
                ForEach(0..<100){ Index in
                    ScrollView(.horizontal, content: {
                        LazyHStack{
                            ForEach(0..<20) { Index in
                                RoundedRectangle(cornerRadius: 25.0)
                                    .fill(Color.white)
                                    .frame(width: 200, height: 150)
                                    .shadow(radius: 10)
                                    .padding()
                            }
                        }
                    })
                }
            }
        })
    }
}

#Preview {
    ScrollViewBootCamp()
}
