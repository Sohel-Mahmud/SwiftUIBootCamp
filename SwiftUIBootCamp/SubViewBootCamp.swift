//
//  SubViewBootCamp.swift
//  SwiftUIBootCamp
//
//  Created by Sohel Mahmud on 19/10/23.
//

import SwiftUI

struct SubViewBootCamp: View {
    var body: some View {
        ZStack {
            //background
            Color.red
                .ignoresSafeArea()
            
            //content
            contentLayer
        }
    }
    
    var contentLayer: some View{
        HStack{
            MyItem(count: 10, title: "Apple", backgroundColor: .white)
            MyItem(count: 5, title: "Grapes", backgroundColor: .yellow)
            MyItem(count: 7, title: "Apple", backgroundColor: .blue)
        }
    }
}

#Preview {
    SubViewBootCamp()
}

struct MyItem: View {
    
    let count: Int
    let title: String
    let backgroundColor: Color
    
    var body: some View {
        VStack{
            Text("\(count)")
            Text("\(title)")
        }
        .padding()
        .background(backgroundColor)
        .clipShape(RoundedRectangle(cornerRadius: 10))
    }
}
