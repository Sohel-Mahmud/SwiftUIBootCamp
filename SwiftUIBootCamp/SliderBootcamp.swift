//
//  SliderBootcamp.swift
//  SwiftUIBootCamp
//
//  Created by Sohel Mahmud on 31/10/23.
//

import SwiftUI

struct SliderBootcamp: View {
    @State var sliderValue: Double = 3
    @State var color: Color = .red
    var body: some View {
        VStack{
            Text(
                String(format: "%.2f", sliderValue)
            )
            .font(.title)
            .foregroundStyle(color)
            
            //Slider(value: $sliderValue)
            //Slider(value: $sliderValue, in: 0...100)
            //Slider(value: $sliderValue, in: 0...5, step: 1.0)
            Slider(
                value: $sliderValue,
                in: 0...5,
                step: 1.0,
                onEditingChanged: { _ in
                    color = .black
                },
                minimumValueLabel: Text("1"),
                maximumValueLabel: Text("5"),
                label: {
                    Text("This is title")
                }
                
            )
            .padding()
        }
    }
}

#Preview {
    SliderBootcamp()
}
