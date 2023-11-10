//
//  ViewModelBootcamp.swift
//  SwiftUIBootCamp
//
//  Created by Sohel Mahmud on 9/11/23.
//

import SwiftUI

struct FruitModel: Identifiable {
    let id: String = UUID().uuidString
    let name: String
    let count: Int
}

class FruitViewModel: ObservableObject {
    
    /// ``@Published`` used to observe a value in class
    /// on the other hand
    /// ``@State`` is used in struct only
    
    @Published var fruitArray: [FruitModel] = []
    @Published var isLoading: Bool = false
    
    init() {
        getFruits()
    }
    
    func getFruits() {
        let fruit1 = FruitModel(name: "Orange", count: 1)
        let fruit2 = FruitModel(name: "Banana", count: 2)
        let fruit3 = FruitModel(name: "Watermalon", count: 3)
        
        isLoading = true
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
            self.fruitArray.append(fruit1)
            self.fruitArray.append(fruit2)
            self.fruitArray.append(fruit3)
            self.isLoading = false
        }
        
        
    }
    
    func deleteFruits(index: IndexSet) {
        fruitArray.remove(atOffsets: index)
    }
}

struct ViewModelBootcamp: View {
    
    /// ``ObservedObject`` will reload the view when something happens like
    /// a animation or other process
    ///
    /// ``@ObservedObject var fruitViewModel: FruitViewModel = FruitViewModel()``
    ///
    ///``@StateObject`` will keep the state, persist the data even the view reloads
    /// Use this on creation / init
    ///
    ///``@ObservedObject`` use this for subviews only
    
    @StateObject var fruitViewModel: FruitViewModel = FruitViewModel()
    
    var body: some View {
        NavigationStack {
            List {
    
                if fruitViewModel.isLoading {
                    ProgressView()
                        .frame(maxWidth: .infinity, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                } else {
                    ForEach(fruitViewModel.fruitArray) { fruit in
                        HStack {
                            Text("\(fruit.count)")
                                .foregroundStyle(.red)
                            Text(fruit.name)
                                .font(.headline)
                                .bold()
                        }
                    }
                    .onDelete(perform: fruitViewModel.deleteFruits)
                }
                
            }
            .listStyle(.grouped)
            .navigationTitle("Fruit List")
            .navigationBarItems(trailing:
                                    /// Passing viewmodel to another screen
                                    NavigationLink(destination: {
                AnotherScreen(fruitViewModel: fruitViewModel)
                
            }, label: {
                Image(systemName: "arrow.right")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            })
            )
            
        }
    }
    
    
}

struct AnotherScreen: View {
    
    @Environment(\.presentationMode) var presentationMode
    @ObservedObject var fruitViewModel: FruitViewModel
    
    var body: some View {
        ZStack {
            Color.green.ignoresSafeArea()
             
            VStack {
                Text("Data on Second Screen passed")
                    .font(.largeTitle)
                List{
                    ForEach(fruitViewModel.fruitArray) { fruit in
                        HStack {
                            Text("\(fruit.count)")
                                .foregroundStyle(.red)
                            Text(fruit.name)
                                .font(.headline)
                                .bold()
                        }
                    }
                    .onDelete(perform: fruitViewModel.deleteFruits)
                }
                }
        }
    }
}

#Preview {
    ViewModelBootcamp()
    //AnotherScreen()
}
