//
//  LocationsView.swift
//  SwiftUIBootCamp
//
//  Created by Sohel Mahmud on 19/12/23.
//

import SwiftUI


struct LocationsView: View {
    
    @EnvironmentObject private var vm: LocationsViewModel
    
    var body: some View {
        List {
            ForEach(vm.locations)  {
                Text($0.name)
            }
        }
    }
}

#Preview {
    LocationsView()
        .environmentObject(LocationsViewModel())
}
