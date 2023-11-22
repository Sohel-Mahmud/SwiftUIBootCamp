//
//  NavigationStackBootcamp.swift
//  SwiftUIBootCamp
//
//  Created by Sohel Mahmud on 22/11/23.
//

import SwiftUI

struct NavigationStackBootcamp: View {
    
    let fruits = ["Apple", "Orange", "Banana"]
    
    /// stackpath can be passed through stack then only
    /// this will work other destiation wont work
    /// we can add multiple screen on stackpath
    @State private var stackPath: [String] = []
    var body: some View {
        NavigationStack(path: $stackPath) {
            
            /// Even we can push multiple screen to stack
            /// by appending it to stackpath
            Button(action: {
                stackPath.append(contentsOf: [
                    "Coconut", "Watermalon", "Mango"
                ])
            }, label: {
                Text("Multiple screen")
            })
             
            ScrollView {
                VStack(spacing: 10) {
                    ForEach(fruits, id: \.self) { fruit in
                        NavigationLink(value: fruit) {
                            Text(fruit)
                        }
                    }
                    
                    ForEach(1..<11) { x in
                        NavigationLink(value: x) {
                            Text("Click me: \(x)")
                        }
                    }
                }
            }        
            .navigationTitle("Nav Stack bootcamp")
            .navigationDestination(for: Int.self) { value in
                MySecondScreeen(value: value)
            }
            .navigationDestination(for: String.self) { value in
                Text("Another Screen: \(value)")
            }
            
        }
    }
}

struct MySecondScreeen: View {
    
    let value: Int
    
    init(value: Int) {
        self.value = value
        print("INIT Screen: \(value)")
    }
    
    var body: some View {
        Text("Screen \(value)")
    }
}

#Preview {
    NavigationStackBootcamp()
}
