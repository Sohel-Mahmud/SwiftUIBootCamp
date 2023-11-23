//
//  SafeAreaInsetBootcamp.swift
//  SwiftUIBootCamp
//
//  Created by Sohel Mahmud on 23/11/23.
//

import SwiftUI

struct SafeAreaInsetBootcamp: View {
    var body: some View {
        NavigationStack {
            List(0..<10) { _ in
                Rectangle()
                    .frame(height: 200)
            }
            .navigationTitle("SafeArea Inset")
            .navigationBarTitleDisplayMode(.inline)
            //            .overlay (
            //                Text("Hi")
            //                    .frame(maxWidth: .infinity)
            //                    .background(Color.yellow)
            //                , alignment: .bottom
            //            )
            .safeAreaInset(edge: .bottom, alignment: .center, spacing: nil) {
                Text("Hi")
                    .frame(maxWidth: .infinity)
                    .background(Color.yellow)
            }
            .safeAreaInset(edge: .top, alignment: .center, spacing: nil) {
                Text("Hi")
                    .frame(maxWidth: .infinity)
                    .background(Color.yellow.ignoresSafeArea(edges: .bottom))
            }
        }
    }
}

#Preview {
    SafeAreaInsetBootcamp()
}
