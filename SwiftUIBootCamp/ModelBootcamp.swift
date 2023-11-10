//
//  ModelBootcamp.swift
//  SwiftUIBootCamp
//
//  Created by Sohel Mahmud on 7/11/23.
//

import SwiftUI

/// Have to make it identifiable with id
struct UserModel: Identifiable{
    let id: String = UUID().uuidString
    let displayName: String
    let userName: String
    let followerCount: Int
    let isVerified: Bool
}

struct ModelBootcamp: View {
    
    @State var users: [UserModel] = [
        UserModel(displayName: "Sohel", userName: "sohe.avon", followerCount: 100, isVerified: false),
        UserModel(displayName: "Rahi", userName: "rahigg", followerCount: 100, isVerified: true),
        UserModel(displayName: "Rihan", userName: "rxss", followerCount: 100, isVerified: false),
        UserModel(displayName: "Foysal", userName: "foyboy", followerCount: 100, isVerified: true),
    ]
    
    var body: some View {
        NavigationStack {
            List{
                
                ForEach(users) { user in
                    HStack(spacing: 15) {
                        Circle()
                            .frame(width: 35, height: 35)
                        VStack(alignment: .leading) {
                            Text(user.displayName)
                            Text("@\(user.userName)")
                                .foregroundStyle(.gray)
                        }
                        
                        Spacer()
                        
                        if user.isVerified {
                            Image(systemName: "checkmark.seal.fill")
                                .foregroundStyle(.blue)
                        }
                        
                        VStack {
                            Text("\(user.followerCount)")
                                .font(.headline)
                            Text("followers")
                                .font(.caption)
                                .foregroundStyle(.gray)
                        }
                    }
                }
                .padding(.vertical, 10)
            }
            .listStyle(InsetGroupedListStyle())
            .navigationTitle("Users")
        }
    }
}

#Preview {
    ModelBootcamp()
}
