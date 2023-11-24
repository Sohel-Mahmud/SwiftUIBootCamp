//
//  ListView.swift
//  SwiftUIBootCamp
//
//  Created by Sohel Mahmud on 24/11/23.
//

import SwiftUI

struct ListView: View {
    var body: some View {
        List {
            ListRowView(title: "this is title")
        }
        .navigationTitle("Todo List 📝")
    }
}

#Preview {
    NavigationStack {
        ListView()
    }
}


