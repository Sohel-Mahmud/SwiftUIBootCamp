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
    @State var isLoading: Bool = false
    var body: some View {
        ZStack(alignment: .top){
            backgroundColor
                .ignoresSafeArea()
            
            VStack {
                ButtonView(backgroundColor: $backgroundColor, title: $title)
                
                Button(action: {
                    isLoading.toggle()
                }, label: {
                    Text(!isLoading ? "Show Loading": "Stop Loading")
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        .foregroundStyle(.white)
                        .padding()
                        .padding(.horizontal)
                        .background(
                            Color.yellow
                        )
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                })
                
                Spacer()
                    .frame(height: 10)
                
                if isLoading {
                    ProgressView()
                }
            }
            
            Spacer()
            
            
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
