//
//  ActionSheetBootcamp.swift
//  SwiftUIBootCamp
//
//  Created by Sohel Mahmud on 26/10/23.
//

import SwiftUI

struct ActionSheetBootcamp: View {
    @State var showActionSheet: Bool = false
    
    var body: some View {
        VStack(alignment: .leading) {
            Button("Click me") {
                showActionSheet.toggle()
            }
            Image(systemName: "house.fill")
    //        .confirmationDialog(
    //            "Permanently erase the items in the Trash?",
    //            isPresented: $showActionSheet
    //        ) {
    //            Button("Empty Trash", role: .destructive) {
    //                // Handle empty trash action.
    //            }
    //        }
            .actionSheet(isPresented: $showActionSheet, content: getActionSheet)
        }
        
    }
    
    func getActionSheet() -> ActionSheet{
        let button1: ActionSheet.Button = .default(Text("DEFAULT"))
        let button2: ActionSheet.Button = .destructive(Text("DESTRUCTIVE"))
        let button3: ActionSheet.Button = .cancel()
            
        return ActionSheet(title: Text("This is the title"), message: Text("This is the message"), buttons: [button1, button2, button3])
        
    }
}

#Preview {
    ActionSheetBootcamp()
}
