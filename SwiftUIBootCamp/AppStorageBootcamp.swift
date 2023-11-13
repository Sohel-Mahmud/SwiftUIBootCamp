//
//  AppStorageBootcamp.swift
//  SwiftUIBootCamp
//
//  Created by Sohel Mahmud on 13/11/23.
//

import SwiftUI

struct AppStorageBootcamp: View {
    
    @AppStorage("name") var currentUserName: String?
    
    var body: some View {
        VStack(spacing: 20) {
            Text(currentUserName ?? "Add Name here")
            
            if let name = currentUserName {
                Text(name)
            }
            
            Button("Save".uppercased()) {
                let name: String = "Nick"
                currentUserName = name
                //UserDefaults.standard.set(name, forKey: "name")
            }
        }
        
//        .onAppear {
//            currentUserName = UserDefaults.standard.string(forKey: "name")
//        }
    }
}

#Preview {
    AppStorageBootcamp()
}
