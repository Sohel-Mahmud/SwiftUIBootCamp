//
//  ColorPickerBootCamp.swift
//  SwiftUIBootCamp
//
//  Created by Sohel Mahmud on 27/10/23.
//

import SwiftUI

struct ColorPickerBootCamp: View {
    @State var backgroundColor: Color = Color.green
    var body: some View {
        ZStack(alignment: .center){
            backgroundColor.ignoresSafeArea()
            
            ColorPicker("Select your color",
                        selection: $backgroundColor, supportsOpacity: true)
            .padding()
            .background(Color.black)
            .clipShape(RoundedRectangle(cornerRadius: 10))
            .foregroundStyle(.white)
            .padding(50)
        }
    }
}

#Preview {
    ColorPickerBootCamp()
}
