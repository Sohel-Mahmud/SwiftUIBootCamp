//
//  StepperBootcamp.swift
//  SwiftUIBootCamp
//
//  Created by Sohel Mahmud on 31/10/23.
//

import SwiftUI

struct StepperBootcamp: View {
    @State var stepperValue: Int = 10
    @State var widthIncrement: CGFloat = 0
    var body: some View {
        VStack{
            Stepper("Stepper: \(stepperValue)", value: $stepperValue)
                .padding()
            
            RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/, style: /*@START_MENU_TOKEN@*/.continuous/*@END_MENU_TOKEN@*/)
                .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/ + widthIncrement, height: 100 + widthIncrement)
            
            Stepper("Stepper 2") {
                incrementWidth(amount: 100)
            } onDecrement: {
                decrementWidth(amount: 50)
            }
            .padding()

        }
    }
    
    func incrementWidth(amount: CGFloat){
        withAnimation {
            widthIncrement += amount
        }
    }
    
    func decrementWidth(amount: CGFloat){
        withAnimation {
            widthIncrement -= amount
        }
    }
}

#Preview {
    StepperBootcamp()
}
