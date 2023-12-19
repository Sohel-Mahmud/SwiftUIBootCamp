//
//  LocationsViewModel.swift
//  SwiftUIBootCamp
//
//  Created by Sohel Mahmud on 19/12/23.
//

import Foundation

class LocationsViewModel: ObservableObject {
    @Published var locations: [LocationModel]
    
    init() {
        let locations = LocationsDataService.locations
        self.locations = locations
    }
}
