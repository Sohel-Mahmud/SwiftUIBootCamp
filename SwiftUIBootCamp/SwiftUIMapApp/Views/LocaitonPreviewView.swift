//
//  LocaitonPreviewView.swift
//  SwiftUIBootCamp
//
//  Created by Sohel Mahmud on 20/12/23.
//

import SwiftUI

struct LocationPreviewView: View {
    
    let location: LocationModel
    
    @EnvironmentObject private var vm: LocationsViewModel
    
    var body: some View {
        
        HStack(alignment: .bottom) {
            VStack(alignment: .leading, spacing: 16.0) {
                
                imageSection
                
                titleSection
            }
            
            VStack() {
                
                learnMoreButton
                
                nextButton
                
            }
        }
        .padding(20)
        .background(
            RoundedRectangle(cornerRadius: 10)
                .fill(.ultraThinMaterial)
                .offset(y: 65)
        )
        .clipShape(RoundedRectangle(cornerRadius: 10))
        
    }
}

extension LocationPreviewView {
    private var imageSection: some View {
        ZStack {
            if let imageName = location.imageNames.first {
                Image(imageName)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 100, height: 100)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
            }
        }
        .padding(8)
        .background(
            Color.white
        )
        .clipShape(RoundedRectangle(cornerRadius: 10))
    }
    
    private var titleSection: some View {
        VStack(alignment: .leading, spacing: 1) {
            Text(location.name)
                .font(.title2)
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
            Text(location.cityName)
                .font(.subheadline)
            
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        
    }
    
    private var learnMoreButton: some View {
        Button(action: {
            vm.sheetLocation = location
        }, label: {
            Text("Learn More")
                .font(.headline)
                .frame(width: 125, height: 35)
        })
        .buttonStyle(.borderedProminent)
    }
    
    private var nextButton: some View {
        Button(action: {
            vm.nextButtonPressed()
        }, label: {
            Text("Next")
                .font(.headline)
                .foregroundStyle(Color.white)
                .frame(width: 125, height: 35)
        })
        .buttonStyle(.bordered)
    }
}

#Preview {
    ZStack {
        Color.pink.ignoresSafeArea()
        
        LocationPreviewView(location: LocationsDataService.locations.first!)
            .padding()
    }
    .environmentObject(LocationsViewModel())
}
