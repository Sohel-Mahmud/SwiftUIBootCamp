//
//  LocationsView.swift
//  SwiftUIBootCamp
//
//  Created by Sohel Mahmud on 19/12/23.
//

import SwiftUI
import MapKit


struct LocationsView: View {
    
    @EnvironmentObject private var vm: LocationsViewModel
    
    //    @State private var mapRegion: MKCoordinateRegion = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 41.8902, longitude: 12.4922), span: MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1))
    
    @available(iOS 17.0, *)
    private var cameraPositon: MapCameraPosition {
        MapCameraPosition.region(vm.mapRegion)
    }
        
    var body: some View {
        ZStack {
            if #available(iOS 17.0, *) {
                Map(position: .constant(cameraPositon), bounds: nil, interactionModes: .all, scope: nil)
                    .mapStyle(.standard(elevation: .realistic))
                    .ignoresSafeArea()
            } else {
                // depricated
                Map(coordinateRegion: $vm.mapRegion)
                    .ignoresSafeArea()
                
            }
            VStack {
                header
                    .padding()
                
                
                Spacer()
                
                ZStack {
                    ForEach(vm.locations) { location in
                        
                        if vm.mapLocation == location {
                            LocationPreviewView(location: location)
                                .padding()
                                .transition(.asymmetric(insertion: .move(edge: .trailing), removal: .move(edge: .leading)))
                        }
                        
                        
                    }
                }
            }
            
            
        }
        
    }
}

extension LocationsView {
    private var header: some View {
        VStack {
            Button(action: {
                vm.toggleLocationList()
            }, label: {
                Text(vm.mapLocation.name + ", " + vm.mapLocation.cityName)
                    .font(.title2)
                    .fontWeight(.black)
                    .foregroundStyle(.primary)
                    .frame(height: 55)
                    .frame(maxWidth: .infinity)
                    .animation(.none, value: vm.mapLocation)
                    .overlay(alignment: .leading) {
                        Image(systemName: "arrow.down")
                            .font(.headline)
                            .foregroundStyle(.primary)
                            .padding()
                            .rotationEffect(Angle(degrees: vm.showLocationsList ? 180 : 0))
                    }
            })
            
            if vm.showLocationsList {
                LocationListView()
            }
        }
        .background(.thinMaterial)
        .clipShape(RoundedRectangle(cornerRadius: 10.0))
        .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    
    LocationsView()
        .environmentObject(LocationsViewModel())
}
