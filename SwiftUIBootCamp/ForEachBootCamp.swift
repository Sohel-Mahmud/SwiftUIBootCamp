//
//  ForEachBootCamp.swift
//  SwiftUIBootCamp
//
//  Created by Sohel Mahmud on 12/10/23.
//

import SwiftUI

struct ForEachBootCamp: View {
    
    let data: [String] = ["hi", "hello"]
    let myString: String = "hello"
    
    var body: some View {
    
        
        VStack{
            ForEach(0..<2) { Index in
                HStack{
                    Circle()  
                        .frame(width: 30, height: 30)
                    Text("Hi: \(Index+1)")
                }
                
            }
            
            ForEach(data.indices) { index in
                Text("\(data[index]): \(index)")
            }
           
        }
    }
}

#Preview {
    ForEachBootCamp()
}
