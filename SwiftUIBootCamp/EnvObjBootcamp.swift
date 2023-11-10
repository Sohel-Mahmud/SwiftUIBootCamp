//
//  EnvObjBootcamp.swift
//  SwiftUIBootCamp
//
//  Created by Sohel Mahmud on 10/11/23.
//

import SwiftUI

class EnvironmentalViewModel: ObservableObject {
    @Published var dataArray: [String] = []
    
    init() {
        getData()
    }
    
    func getData(){
        self.dataArray.append(contentsOf: [
        "iPhone", "iPad", "iMac", "AirPods", "Mac Mini"
        ])
    }
}

struct EnvObjBootcamp: View {
    
    @StateObject var viewModel: EnvironmentalViewModel = EnvironmentalViewModel()
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(viewModel.dataArray, id: \.self) { data in
                    NavigationLink(destination: DetailsView(selectedItem: data)) {
                        Text(data)
                    }
                }
            }
            .navigationTitle("iOS Devices")
        }
        /// ``environmentObject(_:)``
        /// lets the viewmodel passed into this
        /// accessable by all the subviews within the scope
        /// like globally availabe to all subviews
        ///
        .environmentObject(viewModel)
    }
}

struct DetailsView: View {
    
    let selectedItem: String
    
    var body: some View {
        ZStack {
            // background
            Color.orange.ignoresSafeArea()
            
            NavigationLink(destination: FinalView()) {
                Text(selectedItem)
                    .font(.headline)
                    .foregroundStyle(.orange)
                    .padding()
                    .padding(.horizontal)
                    .background(
                        Color.white
                    )
                    .clipShape(RoundedRectangle(cornerRadius: 10))
            }
            
            
        }
    }
}

struct FinalView: View {
    
    /// ``@EnvironmentObject`` is used to access the viewmodel passed from the
    /// Parent aka environment of the view using ``.environmentObject()``
    ///
    @EnvironmentObject var viewModel: EnvironmentalViewModel
    
    var body: some View {
        ZStack {
            // background
            LinearGradient(gradient: Gradient(colors: [Color.red, Color.blue]), startPoint: .topLeading, endPoint: .bottomTrailing)
                .ignoresSafeArea()
            
            //foreground
            ScrollView {
                VStack(spacing: 10) {
                        ForEach(viewModel.dataArray, id: \.self) { data in
                            Text(data)
                        }
                    
                }
                .foregroundStyle(.white)
                .font(.largeTitle)
            }
            
        }
    }
}

#Preview {
    EnvObjBootcamp()
}
