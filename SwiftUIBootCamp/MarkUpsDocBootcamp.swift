//
//  MarkUpsDocBootcamp.swift
//  SwiftUIBootCamp
//
//  Created by Sohel Mahmud on 3/11/23.
//

import SwiftUI

struct MarkUpsDocBootcamp: View {
    
    // MARK: PROPERTIES
    @State var data: [String] = [
        "Apples", "Oranges", "Banans"
    ]
    @State var showAlert: Bool = false
    
    // MARK: BODY
    var body: some View {
        NavigationStack{
            ScrollView{
                Text("hello")
                ForEach(data, id: \.self) { name in
                    Text(name)
                        .font(.headline)
                }
            }
            .navigationTitle("This is the alert!")
            .navigationBarItems(trailing: Button("Alert", action: {
                showAlert.toggle()
            }))
            .alert(isPresented: $showAlert, content: {
                getAlert(text: "This is the alert")
            })
        }
    }
    
    // MARK: FUNCTIONS
    /// Gets an alert with a specific ttile
    ///
    /// This functin creates and returns an alert immediately. The alert will have a little based on the text parameter but it will not have a message
    /// ```
    /// getAlert(text: "hi") -> Alert(title: Text("hi"))
    /// ```
    /// - Warning: There is no extra message return here
    /// - Parameter text: This is the title for the alert
    /// - Returns: returns an alert with title
    func getAlert(text: String) -> Alert{
        return Alert(title: Text(text))
    }
}

// MARK: PREVIEW

#Preview {
    MarkUpsDocBootcamp()
}
