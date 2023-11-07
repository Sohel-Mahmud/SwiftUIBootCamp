//
//  DarkModeBootcamp.swift
//  SwiftUIBootCamp
//
//  Created by Sohel Mahmud on 2/11/23.
//

import SwiftUI

struct DarkModeBootcamp: View {
    
    /// This is for local theming
    @Environment(\.colorScheme) var colorScheme
    
    var body: some View {
        NavigationStack{
            ScrollView{
                VStack(spacing: 10){
                    Text("The color is PRIMARY")
                        .foregroundStyle(.primary)
                    Text("This color is SECONDARY")
                        .foregroundStyle(.secondary)
                    Text("This color is BLACK")
                        .foregroundStyle(.black)
                    Text("This color is WHITE")
                        .foregroundStyle(.white)
                    Text("This color is RED")
                        .foregroundStyle(.red)
                    Text("This color is globally adaptive!")
                        .foregroundStyle(Color("AdaptiveColor"))
                    Text("This color is locally adaptive!")
                        .foregroundStyle(colorScheme == .light ? .green : .yellow)
                }
            }
            .navigationTitle("Dark Mode Bootcamp")
        }
    }
}

#Preview {

        DarkModeBootcamp()
            .preferredColorScheme(.light)
}
#Preview {
 
        DarkModeBootcamp()
            .preferredColorScheme(.dark)
        
}
