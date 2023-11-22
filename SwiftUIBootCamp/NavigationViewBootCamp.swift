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
                 
                ForEach(0..<50){ data in
                    RoundedRectangle(cornerRadius: 10)
                        .frame( height: 100)
                        .frame(maxWidth: .infinity)
                        
                }
            }
            .navigationTitle("All Inbox")
            .navigationBarTitleDisplayMode(/*@START_MENU_TOKEN@*/.automatic/*@END_MENU_TOKEN@*/)
            //.toolbar(Visibility.hidden)
            .padding()
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
            //.toolbar(.automatic, for: .automatic)
            //.toolbarBackground(.hidden, for: .navigationBar)
            .toolbarColorScheme(.dark, for: .navigationBar)
            .toolbarTitleMenu {
                Button("Screen 1") {
                    
                }
                Button("Screen 2") {
                    
                }
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
