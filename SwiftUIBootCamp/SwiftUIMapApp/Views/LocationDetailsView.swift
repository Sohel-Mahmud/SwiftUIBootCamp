//
//  LocationDetailsView.swift
//  SwiftUIBootCamp
//
//  Created by Sohel Mahmud on 22/12/23.
//

import SwiftUI
import MapKit

struct LocationDetailsView: View {
    
    let location: LocationModel
    
    @EnvironmentObject private var vm: LocationsViewModel
    
    
    var body: some View {
        ScrollView {
            VStack {
                imageSection
                    .shadow(color: Color.black.opacity(0.3), radius: 20, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: 10)
                
                VStack(alignment: .leading) {
                    
                    titleSection
                    Divider()
                    descriptionSection
                    Divider()
                    
                    if #available(iOS 17.0, *) {
                        Map(position: .constant(MapCameraPosition.region(MKCoordinateRegion(center: location.coordinates, span: MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01))))) {
                            // custom marker annotation
                            Annotation(location.name, coordinate: location.coordinates, anchor: .bottom) {
                                LocationMapAnnotionView()
                                    .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                                
                            }
                        }
                        .aspectRatio(1, contentMode: .fit)
                        .clipShape(RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/))
                        .allowsHitTesting(false)
                        
                    } else {
                        
                    }
                    
                    
                    
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding()
                
            }
        }
        .ignoresSafeArea(.all)
        .background(.ultraThinMaterial)
        .overlay(exitButton, alignment: .topLeading)
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
                    .frame(width: UIDevice.current.userInterfaceIdiom == .pad ? nil : UIScreen.main.bounds.width)
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
    
    private var exitButton: some View {
        Button(action: {
            vm.sheetLocation = nil
        }, label: {
            Image(systemName: "xmark")
                .padding(16)
                .background(.thickMaterial)
                .cornerRadius(10)
                .shadow(radius: 4)
                .padding()
        })
    }
}

#Preview {
    LocationDetailsView(location: LocationsDataService.locations.first!)
}
