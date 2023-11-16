//
//  ProfileView.swift
//  SwiftUIBootCamp
//
//  Created by Sohel Mahmud on 16/11/23.
//

import SwiftUI

struct ProfilesView: View {
    
    // app storage
    @AppStorage("name") var currntUserName: String?
    @AppStorage("age") var currentUserAge: Int?
    @AppStorage("gender") var currentUserGender: String?
    @AppStorage("signed_in") var currentUserSignedIn: Bool = false
    
    var body: some View {
        VStack {
            Image(systemName: "person.circle.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 150, height: 150)
            Text(currntUserName ?? "Your name here")
            Text("This user is \(currentUserAge ?? 0) years old")
            Text("Users gender is \(currentUserGender ?? "Not selected")")
            Text("SIGN OUT")
                .foregroundStyle(.white)
                .frame(height: 55)
                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                .background(Color.black)
                .font(.headline)
                .cornerRadius(10)
                .onTapGesture {
                    signOut()
                }
        }
        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
        .foregroundStyle(.purple)
        .padding()
        .background(
            Color.white
        )
        .clipShape(RoundedRectangle(cornerRadius: 10))
        .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
        
    }
    
    func signOut() {
        currentUserAge = nil
        currntUserName = nil
        currentUserGender = nil
        withAnimation(.spring) {
            currentUserSignedIn = false

        }
    }
}

#Preview {
    ProfilesView()
}
