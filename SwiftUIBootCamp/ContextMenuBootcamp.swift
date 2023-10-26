//
//  ContextMenuBootcamp.swift
//  SwiftUIBootCamp
//
//  Created by Sohel Mahmud on 26/10/23.
//

import SwiftUI

struct ContextMenuBootcamp: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 10.0) {
            Image(systemName: "house.fill")
                .font(.title)
            Text("Swiftful Thinking")
                .font(.headline)
            Text("How to user Context Menu")
                .font(.subheadline)
        }
        .foregroundStyle(.white)
        .padding(30)
        .background(
            Color.blue.clipShape(RoundedRectangle(cornerRadius: 10)))
        .contextMenu(menuItems: {
            Button(action: {
                
            }, label: {
                Label("Share post", systemImage: "flame.fill")
            })
            Button(action: {
                
            }, label: {
                Label("Report post", systemImage: "love")
            })
            Button(action: {
                
            }, label: {
                HStack{
                    Text("Like post")
                    Image(systemName: "heart.fill")
                }
            })
        })
    }
}

#Preview {
    ContextMenuBootcamp()
}
