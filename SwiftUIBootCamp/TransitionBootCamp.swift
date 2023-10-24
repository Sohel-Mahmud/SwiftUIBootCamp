//
//  TransitionBootCamp.swift
//  SwiftUIBootCamp
//
//  Created by Sohel Mahmud on 23/10/23.
//

import SwiftUI

struct TransitionBootCamp: View {
    
    @State var showView: Bool = false
    
    var body: some View {
        ZStack(alignment: .bottom){
            VStack{
                Button(action: {
                    showView.toggle()
                }, label: {
                    /*@START_MENU_TOKEN@*/Text("Button")/*@END_MENU_TOKEN@*/
                })
                
                Spacer()
            }
            
            if showView {
                RoundedRectangle(cornerRadius: 30)
                    .frame(height: UIScreen.main.bounds.height * 0.5)
                    //.transition(.move(edge: .bottom))
                    .transition(.asymmetric(
                        insertion: .move(edge: .leading),
                        //removal: .move(edge: .bottom)
                        removal: AnyTransition.opacity.animation(.easeInOut)
                    ))
                    .animation(/*@START_MENU_TOKEN@*/.easeIn/*@END_MENU_TOKEN@*/)
                
            }
        }
        .ignoresSafeArea(edges: .bottom)
    }
}

#Preview {
    TransitionBootCamp()
}
