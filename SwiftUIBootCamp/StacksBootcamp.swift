//
//  StacksBootcamp.swift
//  SwiftUIBootCamp
//
//  Created by Macuser on 12/04/2023.
//

import SwiftUI

struct StacksBootcamp: View {
    // Z stack back to front
    var body: some View {
       
        // alignment only works within its child
        // aligns based on highest width component
        VStack(alignment: .leading, spacing: 20){
            
            VStack(alignment: .leading, spacing: 0){
                Rectangle()
                    .fill(Color.red)
                    .frame(width: 100, height: 100, alignment: .center)
                
                Rectangle()
                    .fill(Color.green)
                    .frame(width: 150, height: 100, alignment: .center)
            
                Rectangle()
                    .fill(Color.blue)
                    .frame(width: 200, height: 100, alignment: .center)
            }
            
            HStack(alignment: .top){
                Rectangle()
                    .fill(Color.red)
                    .frame(width: 100, height: 100, alignment: .center)
            
                Rectangle()
                    .fill(Color.red)
                    .frame(width: 100, height: 70, alignment: .center)
            }
            
            ZStack(alignment: .leading){
                
                Rectangle()
                    .fill(Color.red)
                    .frame(width: 150, height: 100, alignment: .center)
                
                Rectangle()
                    .fill(Color.green)
                    .frame(width: 100, height: 100, alignment: .center)
            
            }
            
        }
       
    }
}

struct StacksBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        StacksBootcamp()
    }
}
