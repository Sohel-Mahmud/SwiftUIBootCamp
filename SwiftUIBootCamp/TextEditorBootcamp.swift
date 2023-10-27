//
//  TextEditorBootcamp.swift
//  SwiftUIBootCamp
//
//  Created by Sohel Mahmud on 27/10/23.
//

import SwiftUI

struct TextEditorBootcamp: View {
    @State var textEditorText: String = "This is text editor"
    @State var savedText: String = ""
    var body: some View {
        NavigationStack{
            VStack{
                TextEditor( text: $textEditorText)
                    //.textFieldStyle(RoundedBorderTextFieldStyle())
                    .colorMultiply(Color.gray.opacity(0.3))
                    .font(.headline)
                    .frame(height: 250)
                    .clipShape(RoundedRectangle(cornerRadius: 10.0))
                
                Button(action: {
                    if isTextAppropriate(){
                        saveText()
                    }
                }, label: {
                    Text("Save".uppercased())
                        .font(.headline)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .foregroundStyle(.white)
                        .background(
                            isTextAppropriate() ? Color.blue: Color.gray)
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                })
                .disabled(!isTextAppropriate())
                
                Text(savedText)
                
                Spacer()
                
            }
            .padding()
            .navigationTitle("Text Editor")

        }
    }
    
    func isTextAppropriate() -> Bool{
        if textEditorText.count >= 3{
            return true
        }
        
        return false
    }
    
    func saveText(){
        savedText = textEditorText
        textEditorText = ""
    }
}

#Preview {
    TextEditorBootcamp()
}
