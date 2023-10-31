//
//  DataPickerBootcamp.swift
//  SwiftUIBootCamp
//
//  Created by Sohel Mahmud on 30/10/23.
//

import SwiftUI

struct DataPickerBootcamp: View {
    @State var selectedData: Date = Date()
    
    /// if 2018 is not available i mean if i put
    /// something that is not valid year
    /// on that case need ?? default value
    let startingDate: Date = Calendar.current.date(from: DateComponents(year: 2018)) ?? Date()
    
    let endingDate: Date = Date()
    
    var dateFormatter: DateFormatter{
        let formatter = DateFormatter()
        
        formatter.dateStyle = .medium
        
        return formatter
    }
    var body: some View {
        
        VStack {
            Text("SELECTED DATE: ")
            Text(dateFormatter.string(from: selectedData))
                .font(.title)
            //DatePicker("Select Date", selection: $selectedData)
            //DatePicker("Select Date", selection: $selectedData, displayedComponents: [.date, .hourAndMinute])
            DatePicker("Select Date", selection: $selectedData, in: startingDate...endingDate, displayedComponents: [.date])
            .tint(.red)
                .datePickerStyle(
                    CompactDatePickerStyle()
                    //GraphicalDatePickerStyle()
                    //WheelDatePickerStyle()
                )
            .padding()
        }
    }
}

#Preview {
    DataPickerBootcamp()
}
