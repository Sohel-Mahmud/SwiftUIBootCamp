//
//  TabViewPageTabViewBootcamp.swift
//  SwiftUIBootCamp
//
//  Created by Sohel Mahmud on 31/10/23.
//

import SwiftUI

struct TabViewPageTabViewBootcamp: View {
    /// saves the current tab
    @State var selectedTab: Int = 2
    
    var body: some View {
        TabView(selection: $selectedTab){
            HomeView()
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("Home")
                }
                .tag(0)
            
            BrowserView()
                .tabItem {
                    Image(systemName: "globe")
                    Text("Browse")
                }
                .tag(1)
            
            ProfileView()
                .tabItem {
                    Image(systemName: "person.fill")
                    Text("Profile")
                }
                .tag(2)
        }
        .tint(.red)
    }
}

#Preview {
    TabViewPageTabViewBootcamp()
}

struct HomeView: View {
    var body: some View {
        ZStack {
            Color.red.ignoresSafeArea(edges: .top)
            Text("Home Tab")
        }
            
    }
}

struct BrowserView: View {
    var body: some View {
        Text("Browse Tab")
            
    }
}

struct ProfileView: View {
    var body: some View {
        Text("Profile Tab")
            
    }
}
