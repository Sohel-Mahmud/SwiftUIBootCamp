//
//  ListRowView.swift
//  SwiftUIBootCamp
//
//  Created by Sohel Mahmud on 24/11/23.
//

import SwiftUI

struct ListRowView: View {
    
    let item: ItemModel
    
    var body: some View {
        HStack {
            Image(systemName: item.isCompleted ? "checkmark.circle" : "circle")
                .foregroundStyle(item.isCompleted ? .green : .red)
            Text(item.title)
            Spacer()
        }
        .font(.title2)
        .padding(.vertical, 8)
    }
}

#Preview {
    var item1 = ItemModel(title: "First Item", isCompleted: true)
    var item2 = ItemModel(title: "Second Item", isCompleted: false)
    return ListRowView(item: item1)
}


#Preview {
    var item2 = ItemModel(title: "Second Item", isCompleted: false)
    return ListRowView(item: item2)
}


