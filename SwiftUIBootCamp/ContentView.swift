//
//  ContentView.swift
//  SwiftUIBootCamp
//
//  Created by Macuser on 29/03/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("HellowWorld")
            .padding()
            .font(.title)
            .foregroundColor(Color.green)
            .fontWeight(.thin)
            .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
       
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
