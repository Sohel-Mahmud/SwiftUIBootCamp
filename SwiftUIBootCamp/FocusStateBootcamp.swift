//
//  FocusStateBootcamp.swift
//  SwiftUIBootCamp
//
//  Created by Sohel Mahmud on 17/11/23.
//

import SwiftUI

struct FocusStateBootcamp: View {
    
    /// Focused needs hashable
    enum OnBoardingFieldFocus: Hashable {
        case username
        case password
    }
    
    @State var usernmae: String = ""
    @State var userpassword: String = ""
    
    /// This FocusState saves the focus value, whether the textfield
    /// is on focus or not
    //@FocusState private var usernameInFocus: Bool
    //@FocusState private var passwordInFocus: Bool
    @FocusState private var fieldFocus: OnBoardingFieldFocus?
    
    var body: some View {
        VStack {
            TextField("Add your name here..", text: $usernmae)
                .focused($fieldFocus, equals: .username)
            //.focused($usernameInFocus)
                .padding(.leading)
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background(Color.gray.brightness(0.3))
                .cornerRadius(5)
                .padding()
            
            SecureField("Add your password here..", text: $userpassword)
                .focused($fieldFocus, equals: .password)
                //.focused($passwordInFocus)
                .padding(.leading)
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background(Color.gray.brightness(0.3))
                .cornerRadius(5)
                .padding()
             
            Button("Sign Up") {
                let usernameIsValid = !usernmae.isEmpty
                let userpasswordIsValid = !userpassword.isEmpty
                
                if usernameIsValid && userpasswordIsValid {
                    print("SIGN UP")
                } else if usernameIsValid {
                    fieldFocus = .password
//                    usernameInFocus = false
//                    passwordInFocus = true
                } else {
                    fieldFocus = .username
//                    usernameInFocus = true
//                    passwordInFocus = false
                }
            }
            .buttonStyle(.bordered)
        }
//        .onAppear {
//            /// Add slide delay for the view to finish render
//            DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
//                self.usernameInFocus = true
//
//            }
//        }
    }
}

#Preview {
    FocusStateBootcamp()
}
