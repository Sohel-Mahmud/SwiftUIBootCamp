//
//  InitializerBootcamp.swift
//  SwiftUIBootCamp
//
//  Created by Macuser on 13/04/2023.
//

import SwiftUI

struct InitializerBootcamp: View {
    
    let backgroundColor: Color
    let count: Int
    let name: String
    
    init(count: Int, fruit: Fruit ) {
        
        self.count = count
        
        if fruit == .apple{
            self.name = "Apples"
            self.backgroundColor = Color.red
        } else{
            self.name = "Oranges"
            self.backgroundColor = Color.orange
        }
    }
    
    enum Fruit{
        case apple
        case orange
    }
    
    var body: some View {
        VStack(spacing: 12){
            Text("\(count)")
                .font(.largeTitle)
                .foregroundColor(.white)
            
            Text(name)
                .foregroundColor(.white)
                .font(.headline)
        }
        .frame(width: 150, height: 150)
        .background(backgroundColor)
        .cornerRadius(10)
    }
}

struct InitializerBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        HStack {
            InitializerBootcamp(count: 5, fruit: .apple)
            InitializerBootcamp(count: 10, fruit: .orange)
        }
    }
}
