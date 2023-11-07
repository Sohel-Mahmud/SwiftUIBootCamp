//
//  TabViewPageTabViewBootcamp.swift
//  SwiftUIBootCamp
//
//  Created by Sohel Mahmud on 31/10/23.
//

import SwiftUI

struct TabViewPageTabViewBootcamp: View {
    /// saves the current tab
    @State var selectedTab: Int = 0
    
    var body: some View {
        TabView(selection: $selectedTab){
            HomeView(selectedTab: $selectedTab)
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
    @Binding var selectedTab: Int
    
    let icons: [String] = [
        "heart", "globe", "house.fill", "person.fill"
    ]
    
    var body: some View {
        ZStack {
            Color.red.ignoresSafeArea(edges: .top)
            VStack {
                Text("Home Tab").font(.title).foregroundStyle(.white)
                
                Button {
                    selectedTab = 2
                } label: {
                    Text("Go to Profile")
                        .padding()
                        .background(
                            Color.white
                        )
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                }
                
                /// we can make pagetabview using tabview
                TabView {
                    ForEach(icons, id: \.self) { icon in
                        Image(systemName: icon)
                            .resizable()
                            .scaledToFit()
                            .padding(30)
                    }
                }
                .background(
                    RadialGradient(gradient: Gradient(colors: [Color.red, Color.blue]), center: .center, startRadius: 5, endRadius: 300)
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                )
                .padding()
                .tabViewStyle(PageTabViewStyle())
                
                
            }
        }
        
    }
}

#Preview {
    @State var selectedTab: Int = 2

    return HomeView(selectedTab: $selectedTab)
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
