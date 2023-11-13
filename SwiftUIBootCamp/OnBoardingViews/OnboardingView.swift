//
//  OnboardingView.swift
//  SwiftUIBootCamp
//
//  Created by Sohel Mahmud on 13/11/23.
//

import SwiftUI

struct OnboardingView: View {
    
    @State var onboardingState: Int = 3
    @State var textFieldText: String = ""
    @State var age: Double = 25
    @State var gender: String = ""
    
    var body: some View {
        ZStack {
            //background
            Color.purple.ignoresSafeArea()
            
            // content
            switch onboardingState {
                case 0:
                    welcomeSection
                case 1:
                    addNameSection
                case 2:
                    addAgeSection
                case 3:
                    addGenderSection
                default:
                    RoundedRectangle(cornerRadius: 25)
                    .foregroundStyle(.green)
            }
            
            // buttons
            VStack {
                Spacer()
                
                bottomButton
            }
            .padding(30)
        }
    }
    
    
}

// MARK: Cmponents

extension OnboardingView {
    
    private var bottomButton: some View {
        Text("Sign in")
            .foregroundStyle(.purple)
            .frame(height: 55)
            .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
            .background(
                Color.white
            )
            .clipShape(RoundedRectangle(cornerRadius: 10))
            .onTapGesture {
                
            }
    }
    
    private var welcomeSection: some View {
        VStack(spacing: 40) {
            Spacer()
            Image(systemName: "heart.text.square.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 200)
                .foregroundStyle(.white)
            
            Text("Find your match.")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundStyle(.white)
                .overlay (
                    Capsule(style: .continuous)
                        .frame(height: 3)
                        .offset(y: 5)
                        .foregroundStyle(.white)
                    , alignment: .bottom
                )
            Text("This is the #1 app for finding your match online! In this tutorial we are practicing using AppStorage and other swiftUI techniques")
                .fontWeight(.medium)
                .foregroundStyle(.white)
            Spacer()
            Spacer()
        }
        .multilineTextAlignment(.center)
        .padding()
    }
    
    private var addNameSection: some View {
        VStack(spacing: 40) {
            Spacer()
            
            Text("Whats your name?")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundStyle(.white)
            
            TextField("Your name here", text: $textFieldText)
                .font(.headline)
                .frame(height: 55)
                .padding(.horizontal)
                .background(
                    Color.white
                )
                .cornerRadius(5)
            
            Spacer()
            Spacer()
        }
        .padding()
    }
    
    private var addAgeSection: some View {
        VStack(spacing: 20) {
            Spacer()
            
            Text("Whats your age?")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundStyle(.white)
                
            Text("\(String(format: "%.0f", age))")
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                .foregroundStyle(.white)
            
            Slider(value: $age, in: 18...100, step: 1)
                .tint(.white)
            
            Spacer()
            Spacer()
        }
        .padding()
    }
    
    private var addGenderSection: some View {
        VStack(spacing: 5) {
            Spacer()
            
            Text("Whats your gender?")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundStyle(.white)
                
            Picker(selection: $gender) {
                Text("Male").tag("Male")
                Text("Female").tag("Female")
            } label: {
                Text(gender.count > 1 ? gender : "Select a gender")
                    .font(.headline)
                    .foregroundStyle(.purple)
                    .frame(height: 55)
                    .frame(maxWidth: .infinity)
                    .background(
                        Color.white
                    )
                    .cornerRadius(10)

            }
            .pickerStyle(.menu)
            
            Spacer()
            Spacer()
        }
        .padding()
    }
}

#Preview {
    OnboardingView()
}
