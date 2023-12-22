//
//  LocationsView.swift
//  SwiftUIBootCamp
//
//  Created by Sohel Mahmud on 19/12/23.
//

import SwiftUI
import MapKit

/*
 For latest map integration in 17.0
 https://developer.apple.com/videos/play/wwdc2023/10043/
 
 https://useyourloaf.com/blog/mapkit-for-swiftui/
 */


struct LocationsView: View {
    
    @EnvironmentObject private var vm: LocationsViewModel
    
    //    @State private var mapRegion: MKCoordinateRegion = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 41.8902, longitude: 12.4922), span: MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1))
    
    @available(iOS 17.0, *)
    private var cameraPositon: MapCameraPosition {
        MapCameraPosition.region(vm.mapRegion)
    }
        
    let maxWidthForIpad: CGFloat = 700
    
    var body: some View {
        ZStack {
            if #available(iOS 17.0, *) {
                Map(position: .constant(cameraPositon), bounds: nil, interactionModes: .all, scope: nil) {
                    ForEach(vm.locations) { location in
                        // use this for default marker
                        //Marker(location.name, coordinate: location.coordinates)
                        
                        // custom marker annotation
                        Annotation(location.name, coordinate: location.coordinates, anchor: .bottom) {
                            LocationMapAnnotionView()
                                .scaleEffect(vm.mapLocation == location ? 1.0 : 0.7)
                                .shadow(radius: 5)
                                .onTapGesture {
                                    vm.showNextLocation(location: location)
                                }
                        }
                    }
                }
                .mapStyle(.standard(elevation: .realistic))
                .ignoresSafeArea()
                
            } else {
                // depricated
                Map(coordinateRegion: $vm.mapRegion,
                    annotationItems: vm.locations,
                    annotationContent: { location in
                    MapAnnotation(coordinate: location.coordinates) {
                        Text("hello")
                    }
                })
                .ignoresSafeArea()
                
            }
            VStack {
                header
                    .padding()
                    .frame(maxWidth: maxWidthForIpad)
                
                Spacer()
                
                locationPreviewStack
            }
            
            
        }
        .sheet(item: $vm.sheetLocation, onDismiss: nil) { location in
            LocationDetailsView(location: location)
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
    
    private var locationPreviewStack: some View {
        ZStack {
            ForEach(vm.locations) { location in
                
                if vm.mapLocation == location {
                    LocationPreviewView(location: location)
                        .padding()
                        .frame(maxWidth: maxWidthForIpad)
                        .frame(maxWidth: .infinity)
                        .transition(.asymmetric(insertion: .move(edge: .trailing), removal: .move(edge: .leading)))
                }
                
                
            }
        }
    }
}

#Preview {
    
    LocationsView()
        .environmentObject(LocationsViewModel())
}
