//
//  NavigationViewBootCamp.swift
//  SwiftUIBootCamp
//
//  Created by Sohel Mahmud on 24/10/23.
//

import SwiftUI

struct NavigationViewBootCamp: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                NavigationLink("Hello, world", destination: MyOtherScreen())
                
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            }
            .navigationTitle("All Inbox")
            .navigationBarTitleDisplayMode(/*@START_MENU_TOKEN@*/.automatic/*@END_MENU_TOKEN@*/)
            //.toolbar(Visibility.hidden)
            .toolbar {
                ToolbarItem(placement: .primaryAction) {
                       Button(action: {}) { Image(systemName: "book") }
                   }
                   ToolbarItem(placement: .primaryAction) {
                       Button(action: {}) { Image(systemName: "gear") }
                   }
                ToolbarItem(placement: .topBarLeading) {
                    
                    NavigationLink(destination: MyOtherScreen(), label: {
                        Image(systemName: "person")
                    })
                    .tint(.red)
                    
                }
                   
//                   ToolbarItem(placement: .bottomBar) {
//                       Button(action: {}) { Image(systemName: "1.square") }
//                   }
//                   ToolbarItem(placement: .bottomBar) {
//                       Button(action: {}) { Image(systemName: "2.square") }
//                   }
            }
        }
    }
}

struct MyOtherScreen: View {
    var body: some View {
        ZStack{
            Color.green.ignoresSafeArea()
                .navigationTitle("Green Screen")
            
            NavigationLink("3rd screen", destination: MyThirdScreen())
            
        }
    }
}

struct MyThirdScreen: View {
    
    @Environment(\.dismiss) var dissmissable
    
    var body: some View {
        ZStack{
            Color.white.ignoresSafeArea()
                .navigationTitle("3rd Screen")
                .toolbar(Visibility.hidden)
            
            VStack {
                
                Button(action: {
                    dissmissable.callAsFunction()
                }, label: {
                    Text("Back Button")
                })
                
                NavigationLink("Click here", destination: Text("3rd screen!"))
            }
            
        }
    }
}

#Preview {
    NavigationViewBootCamp()
}
