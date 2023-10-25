//
//  ListBootCamp.swift
//  SwiftUIBootCamp
//
//  Created by Sohel Mahmud on 24/10/23.
//

import SwiftUI

struct ListBootCamp: View {
    @State var fruits: [String] = [
    "Apple", "Orange", "Banana", "Coconut"
    ]
    var body: some View {
        NavigationStack{
            List{
                Section {
                    ForEach(fruits, id: \.self){ fruit in
                        Text(fruit.description.capitalized)
                    }
                    .onDelete(perform: delete/*{ indexSet in
                        delete(index: indexSet)
                    }*/
                    )
                    .onMove(perform: move
                            /*{ indices, newOffset in
                                move(from: indices, to: newOffset)
                            }*/
                    )
                }
                
            
            header: {
                HStack {
                    Text("Fruits")
                    Image(systemName: "flame.fill")
                }
                .font(.headline)
                .foregroundStyle(.orange)
            }
            }
            .tint(.purple)
            .listStyle(.sidebar)
            .navigationTitle("Grocery List")
            .toolbar{
                ToolbarItem(placement: ToolbarItemPlacement.topBarLeading, content: {
                    EditButton()
                })
                
                ToolbarItem(placement: ToolbarItemPlacement.topBarTrailing, content: {
                    addButton
                })
                
            }
            .tint(.red)

        }
    }
    
    var addButton: some View{
        Button(action: {
            add()
        }, label: {
            Text("Add")
        })
    }
    
    func add(){
        fruits.append("Mango")
    }
    
    func delete(index: IndexSet){
        fruits.remove(atOffsets: index)
    }
    
    func move(from: IndexSet, to: Int){
        fruits.move(fromOffsets: from, toOffset: to)
    }
}

#Preview {
    ListBootCamp()
}
