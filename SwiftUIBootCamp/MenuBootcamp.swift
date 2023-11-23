//
//  MenuBootcamp.swift
//  SwiftUIBootCamp
//
//  Created by Sohel Mahmud on 23/11/23.
//

import SwiftUI

struct MenuBootcamp: View {
    var body: some View {
        Menu {
            Button("Button1") {
                
            }
            Button("Button2") {
                
            }
            Button("Button3") {
                
            }
        } label: {
            Text("Click Me!")
        }

    }
}

#Preview {
    MenuBootcamp()
}
