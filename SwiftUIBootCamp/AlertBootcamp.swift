//
//  AlertBootcamp.swift
//  SwiftUIBootCamp
//
//  Created by Sohel Mahmud on 25/10/23.
//

import SwiftUI

struct AlertBootcamp: View {
    @State var showAlert: Bool = false
    var body: some View {
        Button(action: {
            showAlert.toggle()
        }, label: {
            /*@START_MENU_TOKEN@*/Text("Button")/*@END_MENU_TOKEN@*/
        })
//        .alert(
//            "There was an error",
//            isPresented: $showAlert)
//        {
//            Button(role: .destructive) {
//                // Handle the deletion.
//            } label: {
//                Text("Delete")
//            }
//            Button("Retry") {
//                // Handle the retry action.
//            }
//        } message: {
//            Text("Hi there")
//        }
        .alert("There is an error", isPresented: $showAlert) {
            Button("Confirm") {
                
            }
            Button("Delete", role: .destructive) {
                
            }
            Button("Retry") {
                
            }
        } message: {
            Text("ssdfsdf")
        }
        
    }
}

#Preview {
    AlertBootcamp()
}
