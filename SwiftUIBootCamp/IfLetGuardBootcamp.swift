//
//  IfLetGuardBootcamp.swift
//  SwiftUIBootCamp
//
//  Created by Sohel Mahmud on 7/11/23.
//

import SwiftUI

struct IfLetGuardBootcamp: View {
    @State var displayText: String? = nil
    @State var currentUserId: String? = "userid123"
    @State var isLoading: Bool = false
    
    var body: some View {
        NavigationStack{
            VStack{
                Text("Here is best practice")
                
                /// If value is null in text this will not execute
                /// DO NOT USE ! EVER !!!!
                /// DO NOT FORCE UNWRAP VALUES
                
                if let text = displayText {
                    Text(text)
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                }
                
                if isLoading {
                    ProgressView()
                }
                
                Spacer()
            }
            .navigationTitle("Safe coding")
            .onAppear{
                loadData()
                //loadData2()
            }
        }
    }
    
    func loadData() {
        if let userId = currentUserId {
            isLoading = true
            
            DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                displayText = "THis is new data.user id: \(userId)"
                isLoading = false
            }
        } else {
            displayText = "Error. No user Id found"
        }
        
    }
    
    /// Use of Guard
    func loadData2() {
        
        /// if userId not found it will throw error and return
        guard let userId = currentUserId else {
            displayText = "Error. No user Id found"
            return
        }
        
        /// Now if userId is found executes the rest of the code
        isLoading = true
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
            displayText = "THis is new data \(userId)"
            isLoading = false
        }
    }
}

#Preview {
    IfLetGuardBootcamp()
}
