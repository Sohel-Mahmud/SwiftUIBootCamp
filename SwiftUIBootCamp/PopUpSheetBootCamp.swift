//
//  PopUpSheetBootCamp.swift
//  SwiftUIBootCamp
//
//  Created by Sohel Mahmud on 23/10/23.
//

import SwiftUI

struct PopUpSheetBootCamp: View {
    @State var showSheet: Bool = false
    var body: some View {
        ZStack{
            Color.green
                .ignoresSafeArea()
            
            Button(action: {
                showSheet.toggle()
            }, label: {
                /*@START_MENU_TOKEN@*/Text("Button")/*@END_MENU_TOKEN@*/
                    .foregroundStyle(.green)
                    .font(.headline)
                    .padding(20)
                    .background(
                        Color.white.clipShape(RoundedRectangle(cornerRadius: 10))
                    )
            })
//            .fullScreenCover(isPresented: $showSheet, content: {
//                /// Never add if else here or
//                /// any conditional logic
//                /// it will throw error
//                SecondScreen()
//            })
            .sheet(isPresented: $showSheet, content: {
                /// Never add if else here or
                /// any conditional logic
                /// it will throw error
                SecondScreen()
            })
        }
    }
}

struct SecondScreen: View{
    
    @Environment(\.dismiss) var dismissScreen
    
    var body: some View{
        ZStack(alignment: .topLeading, content: {
            Color.red
                .ignoresSafeArea(.all)
            
            Button(action: {
                dismissScreen()
            }, label: {
                Image(systemName: "xmark")
                    .font(.largeTitle)
                    .foregroundStyle(.white)
                    .padding(10)
            })
        })
    }
}

#Preview {
    PopUpSheetBootCamp()
}
