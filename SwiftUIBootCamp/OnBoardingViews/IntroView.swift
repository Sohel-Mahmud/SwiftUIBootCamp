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
                    .padding()
            } else {
                OnboardingView()
            }
            
            
        }
    }
}

#Preview {
    IntroView()
}
