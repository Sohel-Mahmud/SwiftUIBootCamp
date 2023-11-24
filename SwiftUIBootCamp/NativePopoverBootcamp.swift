//
//  NativePopoverBootcamp.swift
//  SwiftUIBootCamp
//
//  Created by Sohel Mahmud on 23/11/23.
//

import SwiftUI

struct NativePopoverBootcamp: View {
    
    @State private var showPopover: Bool = false
    @State private var feedbackOptions: [String] = [
        "Very Good ",
        "Avarage Good ",
        "Very bad"
    ]
    var body: some View {
        ZStack {
            Color.gray.opacity(0.5).ignoresSafeArea()
            
            VStack {
                /// popover appears right on the view
                /// where we put the modifier
                Button("Provide Feedback") {
                    showPopover.toggle()
                }
                .padding(20)
                .background(Color.yellow)
                .popover(isPresented: $showPopover, attachmentAnchor: .point(.top), content: {
                    VStack {
                        ForEach(feedbackOptions, id: \.self) { option in
                            
                            Button(option) {
                                
                            }
                            if option != feedbackOptions.last {
                                Divider()
                            }
                        }
                    }
                    .padding(EdgeInsets(top: 10, leading: 10, bottom: 10, trailing: 10))
                    .presentationCompactAdaptation(.popover)
                })
//                .popover(isPresented: $showPopover, content: {
//                    Text("Hello!")
//                        .presentationCompactAdaptation(.popover)
//                })
            }
        }
    }
}

#Preview {
    NativePopoverBootcamp()
}
