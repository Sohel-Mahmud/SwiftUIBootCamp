//
//  ToggleBootcamp.swift
//  SwiftUIBootCamp
//
//  Created by Sohel Mahmud on 27/10/23.
//

import SwiftUI

struct ToggleBootcamp: View {
    @State var toogleIsOn: Bool = false
    var body: some View {
        Toggle(isOn: $toogleIsOn, label: {
            Text("Label \(toogleIsOn.description)")
        })
        .toggleStyle(SwitchToggleStyle(tint: Color.red))
        .padding()
    }
}

#Preview {
    ToggleBootcamp()
}
