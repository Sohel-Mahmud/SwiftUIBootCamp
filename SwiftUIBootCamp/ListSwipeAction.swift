//
//  ListSwipeAction.swift
//  SwiftUIBootCamp
//
//  Created by Sohel Mahmud on 17/11/23.
//

import SwiftUI

struct ListSwipeAction: View {
    
    @State var fruits: [String] = [
    "Apple", "Orange", "Banana", "Coconut"
    ]
    
    var body: some View {
        List{
            ForEach(fruits, id: \.self){
                Text($0.capitalized)
                    .swipeActions(edge: .trailing, allowsFullSwipe: true){
                        Button("Archive") {
                            
                        }
                        .tint(.green)
                        Button("Edit") {
                            
                        }
                        .tint(.blue)
                        Button("Delete") {
                            
                        }
                        .tint(.red)
                    }
                    .swipeActions(edge: .leading, allowsFullSwipe: true){
                        Button("Share") {
                            
                        }
                        .tint(.gray)
                       
                    }
            }
        }
    }
}

#Preview {
    ListSwipeAction()
}
