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
    var body: some Scene {
        WindowGroup {
            /// This commented line for Bootcamp
            //SubmitButtonKeyboardBootcamp()
            
            /// This is for todolist app
            NavigationStack {
                ListView()
            }
        }
    }
}
