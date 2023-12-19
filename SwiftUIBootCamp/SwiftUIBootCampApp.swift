//
//  SwiftUIBootCampApp.swift
//  SwiftUIBootCamp
//
//  Created by Macuser on 29/03/2023.
//

import SwiftUI

/*
 MVVM Architecture
 
 Model - data point
 View - UI
 ViewModel - Manages Models for view
 */

@main
struct SwiftUIBootCampApp: App {
    
    /// For ToDo List App
//    @StateObject var listViewModel: ListViewModel = ListViewModel()
//    
//    var body: some Scene {
//        WindowGroup {
//            /// This commented line for Bootcamp
//            //SubmitButtonKeyboardBootcamp()
//            
//            /// This is for todolist app
//            NavigationStack {
//                ListView()
//            }
//            /// ``environmentObject(_:)``
//            /// lets the viewmodel passed into this
//            /// accessable by all the subviews within the scope
//            /// like globally availabe to all subviews
//            .environmentObject(listViewModel)
//        }
//    }
    
    /// For MapApp
    @StateObject private var vm = LocationsViewModel()
    
    var body: some Scene {
        WindowGroup {
            /// This commented line for Bootcamp
            //SubmitButtonKeyboardBootcamp()
            
            /// This is for todolist app
            NavigationStack {
                LocationsView()
            }
            /// ``environmentObject(_:)``
            /// lets the viewmodel passed into this
            /// accessable by all the subviews within the scope
            /// like globally availabe to all subviews
            .environmentObject(vm)
        }
    }
}
