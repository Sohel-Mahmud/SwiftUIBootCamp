//
//  PopUpSheetBootCamp.swift
//  SwiftUIBootCamp
//
//  Created by Sohel Mahmud on 23/10/23.
//

import SwiftUI

struct PopUpSheetBootCamp: View {
    @State var showSheet: Bool = false
    @State var detents: PresentationDetent = .large
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
                SecondScreen(detents: $detents)
                //.presentationDetents([.medium, .large])
                    .presentationDetents([.fraction(0.2), .height(300), .medium, .large])
                //.presentationDetents([.height(500)])
                /// Programaticaly resize sheet
                    .presentationDetents([.medium, .large], selection: $detents)
                //.presentationDragIndicator(.hidden)
                /// this disabled dragging
                //.interactiveDismissDisabled()
            })
        }
    }
}

struct SecondScreen: View{
    
    @Environment(\.dismiss) var dismissScreen
    
    @Binding var detents: PresentationDetent
    
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
            
            
                VStack(alignment: .center) {
                    Button("Medium") {
                        detents = .medium
                    }
                    
                    
                    Button("Large") {
                        detents = .large
                    }
                }
                .padding(.top)
            .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
            
            
            
        })
    }
}

#Preview {
    PopUpSheetBootCamp()
}
