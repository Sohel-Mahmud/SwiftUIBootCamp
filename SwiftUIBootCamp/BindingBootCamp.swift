//
//  BindingBootCamp.swift
//  SwiftUIBootCamp
//
//  Created by Sohel Mahmud on 19/10/23.
//

import SwiftUI

struct BindingBootCamp: View {
    
    @State var backgroundColor: Color = Color.green
    @State var title: String = "Title"
    var body: some View {
        ZStack{
            backgroundColor
                .ignoresSafeArea()
            
            ButtonView(backgroundColor: $backgroundColor, title: $title)
        }
    }
}

#Preview {
    BindingBootCamp()
}

struct ButtonView: View {
    @Binding var backgroundColor: Color
    @Binding var title: String
    
    @State var buttonColor: Color = Color.blue
    var body: some View {
        VStack{
            Text(title)
                .foregroundStyle(.white)
            
            Button(action: {
                backgroundColor = Color.red
                title = "New Title!!"
                buttonColor = Color.yellow
            }, label: {
                Text("Button")
                    .foregroundStyle(.white)
                    .padding()
                    .padding(.horizontal)
                    .background(
                        buttonColor
                    )
                    .clipShape(RoundedRectangle(cornerRadius: 10))
            })
        }
    }
}
