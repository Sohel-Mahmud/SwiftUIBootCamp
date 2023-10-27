//
//  PickerBootcamp.swift
//  SwiftUIBootCamp
//
//  Created by Sohel Mahmud on 27/10/23.
//

import SwiftUI

struct PickerBootcamp: View {
    @State var selection: String = "1"
    
    @State var selectionFilter: String = "Most Recent"
    let filterOptions: [String] = ["Most Recent",
    "Most Popular", "Most Liked"]
    
    init() {
        UISegmentedControl.appearance().selectedSegmentTintColor = UIColor.red
        
        let attributes: [NSAttributedString.Key:Any] = [
            .foregroundColor : UIColor.white,
            //.font : UIFont.systemFont(ofSize: 20.0)
                
        ]
        
        UISegmentedControl.appearance().setTitleTextAttributes(attributes, for: .selected)
    
    }
    
    var body: some View {
        VStack {
            
            /// inline style
            HStack{
                Text("Selected: \(selection)")
            }
            
            Picker(selection: $selection) {
                ForEach(0..<200){ data in
                    Text("\(data)").tag("\(data)")
                }
            } label: {
                Text("Picker")
            }
            .pickerStyle(.inline)
            
            /// Menu style
            Picker(selection: $selectionFilter) {
                ForEach(filterOptions, id: \.self){ option in
                    HStack{
                        Text(option)
                        Image(systemName: "heart.fill")
                    }
                    .tag(option)
                }
            } label: {
                Text("filter: \(selection)")
            }
            .pickerStyle(.menu)
            
            /// Segmented style
            Picker(selection: $selectionFilter) {
                ForEach(filterOptions, id: \.self){ option in
                        Text("\(option)")
                        .tag(option)
                }
            } label: {
                Text("filter: \(selection)")
            }
            .pickerStyle(.segmented)
            //.background(.red)

        }
        .padding()
        
    }
    
}

#Preview {
    PickerBootcamp()
}
