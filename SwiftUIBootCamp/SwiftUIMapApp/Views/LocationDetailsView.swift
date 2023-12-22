//
//  LocationDetailsView.swift
//  SwiftUIBootCamp
//
//  Created by Sohel Mahmud on 22/12/23.
//

import SwiftUI

struct LocationDetailsView: View {
    
    let location: LocationModel
    
    var body: some View {
        ScrollView {
            VStack {
                imageSection
                    .shadow(color: Color.black.opacity(0.3), radius: 20, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: 10)
                
                VStack(alignment: .leading) {
                    
                    titleSection
                    Divider()
                    descriptionSection
                    
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding()
                                
            }
        }
        .ignoresSafeArea(.all)
    }
}

extension LocationDetailsView {
    private var imageSection: some View {
        TabView {
            ForEach(location.imageNames, id: \.self) {
                Image($0)
                    .resizable()
                    .scaledToFill()
                /// this is to get screen width and clip the pager
                /// so that no rendering issue happen
                    .frame(width: UIScreen.main.bounds.width)
                    .clipped()
                
            }
        }
        .frame(height: 450)
        .tabViewStyle(PageTabViewStyle())
    }
    
    private var titleSection: some View {
        VStack(alignment: .leading) {
            Text(location.name)
                .font(.largeTitle)
                .fontWeight(.semibold)
            Text(location.cityName)
                .font(.title3)
                .foregroundStyle(.secondary)
            
        }
    }
    
    private var descriptionSection: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text(location.description)
                .font(.subheadline)
                .foregroundStyle(.secondary)
            
            if let url = URL(string: location.link) {
                Link("Read more on Wikipedia", destination: url)
                    .tint(.blue)
            }
            
           
        }
    }
}

#Preview {
    LocationDetailsView(location: LocationsDataService.locations.first!)
}
