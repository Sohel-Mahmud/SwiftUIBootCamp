//
//  AnimationBootCamp.swift
//  SwiftUIBootCamp
//
//  Created by Sohel Mahmud on 20/10/23.
//

import SwiftUI

struct AnimationBootCamp: View {
    @State var isAnimated: Bool = false
    var body: some View {
        VStack{
            Button(action: {
                withAnimation (
                    Animation.default
                        .repeatCount(5, autoreverses: true)
                    //.repeatForever(autoreverses: true)
                ){
                    isAnimated.toggle()
                }
            }, label: {
                /*@START_MENU_TOKEN@*/Text("Button")/*@END_MENU_TOKEN@*/
            })
            
            Spacer()
            
            RoundedRectangle(cornerRadius: isAnimated ? 50: 25)
                .fill(isAnimated ? Color.red : Color.green)
                .frame(width: isAnimated ? /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/ : 300, height: isAnimated ? /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/ : 300)
                .rotationEffect(Angle(degrees: isAnimated ? 360 : 0))
                .offset(y: isAnimated ? 300 : 0)
            
            Spacer()
        }
    }
}

#Preview {
    AnimationBootCamp()
}
