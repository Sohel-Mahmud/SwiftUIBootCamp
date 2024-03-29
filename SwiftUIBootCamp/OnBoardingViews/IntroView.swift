//
//  IntroView.swift
//  SwiftUIBootCamp
//
//  Created by Sohel Mahmud on 13/11/23.
//

import SwiftUI

struct IntroView: View {
    
    @AppStorage("signed_in") var currentUserSignedIn: Bool = false
    
    var body: some View {
        ZStack {
            //background
            RadialGradient(gradient: Gradient(colors: [Color.blue, Color.purple]), center: .topLeading, startRadius: 5, endRadius: UIScreen.main.bounds.height)
                .ignoresSafeArea()
            
            if currentUserSignedIn {
                ProfilesView()
                    .transition(.asymmetric(insertion: .move(edge: .bottom), removal: .move(edge: .top)))
            } else {
                OnboardingView()
                    .transition(.asymmetric(insertion: .move(edge: .top), removal: .move(edge: .bottom)))
            }
            
            
        }
    }
}

#Preview {
    IntroView()
}
