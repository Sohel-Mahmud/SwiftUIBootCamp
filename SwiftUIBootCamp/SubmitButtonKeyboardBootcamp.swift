//
//  SubmitButtonKeyboardBootcamp.swift
//  SwiftUIBootCamp
//
//  Created by Sohel Mahmud on 21/11/23.
//

import SwiftUI

struct SubmitButtonKeyboardBootcamp: View {
    @State private var text: String = ""
    var body: some View {
        VStack {
            TextField("Placeholder..", text: $text)
                .submitLabel(.done)
                .onSubmit {
                    print("Something on the console")
                }
            
            TextField("Placeholder..", text: $text)
                .submitLabel(.search)
                .onSubmit {
                    print("Something on the console")
                }
            
            TextField("Placeholder..", text: $text)
                .submitLabel(.go)
                .onSubmit {
                    print("Something on the console")
                }
        }
    }
}

#Preview {
    SubmitButtonKeyboardBootcamp()
}
