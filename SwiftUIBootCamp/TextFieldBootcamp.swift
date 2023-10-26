//
//  TextFieldBootcamp.swift
//  SwiftUIBootCamp
//
//  Created by Sohel Mahmud on 26/10/23.
//

import SwiftUI

struct TextFieldBootcamp: View {
    
    @State var textFieldText: String = ""
    @State var dataArray: [String] = []
    var body: some View {
        NavigationStack{
            VStack{
                TextField("Type here..", text: $textFieldText)
                    //.textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                    .background(Color.gray.opacity(0.3).clipShape(RoundedRectangle(cornerRadius: 10)))
                    .foregroundStyle(Color.red)
                    .font(.headline)
                
                Button(action: {
                    saveText()
                }, label: {
                    Text("Save".uppercased())
                        .font(.headline)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .foregroundStyle(.white)
                        .background(Color.blue.clipShape(RoundedRectangle(cornerRadius: 10)))
                })
                
                ForEach(dataArray, id: \.self) { data in
                    Text(data)
                }
                
                Spacer()
                
            }
            .padding()
            .navigationTitle("TextField Bootcamp")
        }
        
    }
    
    func saveText(){
        dataArray.append(textFieldText)
        textFieldText = ""
    }
}

#Preview {
    TextFieldBootcamp()
}
