//
//  BadgesBootcamp.swift
//  SwiftUIBootCamp
//
//  Created by Sohel Mahmud on 17/11/23.
//

import SwiftUI

struct BadgesBootcamp: View {
    
    /// Badges only work on
    /// List
    /// TabView
    
    var body: some View {
        TabView {
            
            
            ZStack(alignment: .center) {
                
                
                VStack {
                    List {
                        Text("Hellow, world").badge("New Item")
                        Text("Hellow, world")
                        Text("Hellow, world")
                        Text("Hellow, world")
                        Text("Hellow, world")
                    }
                }
                
            }
            
            .tabItem {
                Image(systemName: "heart.fill")
                Text("Hello")
            }
            .badge(/*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
            
            
            
            Color.green
                .tabItem {
                    Image(systemName: "heart.fill")
                    Text("Hello")
                }
                .badge(2)
            
            Color.blue
                .tabItem {
                    Image(systemName: "heart.fill")
                    Text("Hello")
                }
                .badge(7)
        }
        
    }
}

#Preview {
    BadgesBootcamp()
}
