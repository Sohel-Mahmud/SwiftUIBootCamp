//
//  LazyVHGridBootCamp.swift
//  SwiftUIBootCamp
//
//  Created by Sohel Mahmud on 17/10/23.
//

import SwiftUI

struct LazyVHGridBootCamp: View {
    
    let columns: [GridItem] = [
//        GridItem(.adaptive(minimum: 50, maximum: 300), spacing: nil, alignment: nil)
        GridItem(.flexible(), spacing: 6, alignment: nil),
        GridItem(.flexible(), spacing: 6, alignment: nil),
        GridItem(.flexible(), spacing: 6, alignment: nil),
//        GridItem(.fixed(50), spacing: nil, alignment: nil),
//        GridItem(.fixed(50), spacing: nil, alignment: nil),
//        GridItem(.fixed(50), spacing: nil, alignment: nil),
    ]
    
    var body: some View {
        ScrollView {
            
            Rectangle()
                .fill(Color.orange)
                .frame(height: 300)
            
            LazyVGrid(
                columns: columns,
                alignment: .center,
                spacing: 6,
                pinnedViews: [.sectionHeaders],
                content: {
                    
                    Section {
                        ForEach(0..<50) { Index in
                            RoundedRectangle(cornerRadius: 12)
                                .frame(height: 150)
                        }
                    } header: {
                        Text("Section 1")
                            .foregroundColor(.white)
                            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                            .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
                            .background(Color.blue)
                            .padding()
                    }

                    Section {
                        ForEach(0..<50) { Index in
                            RoundedRectangle(cornerRadius: 12)
                                .frame(height: 150)
                        }
                    } header: {
                        Text("Section 2")
                            .foregroundColor(.white)
                            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                            .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
                            .background(Color.red)
                            .padding()
                    }
                    
            })
            
        }.padding(
        EdgeInsets(top: 5, leading: 10, bottom: 0, trailing: 10)
        )
        
    }
}

#Preview {
    LazyVHGridBootCamp()
}
