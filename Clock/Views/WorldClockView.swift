//
//  WorldClockView.swift
//  Clock
//
//  Created by Hannu Packalen on 2024-11-11.
//

import SwiftUI

struct WorldClockView: View {
    var body: some View {
        NavigationStack {
            VStack {
                CityView(Time: "12:00", AmPm: "PM", City: "Toronto", Difference: "+ 0:00hrs")
                CityView(Time: "7:00", AmPm: "PM", City: "Helsinki", Difference: "+ 7:00hrs")
                CityView(Time: "5:00", AmPm: "PM", City: "London", Difference: "+ 5:00hrs")
                CityView(Time: "10:00", AmPm: "AM", City: "Edmonton", Difference: "- 2:00hrs")
                CityView(Time: "6:00", AmPm: "PM", City: "Amsterdam", Difference: "+ 6:00hrs")
            }
            .navigationTitle("World Clock")
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    
                    Button("Edit") {
                        // Does nothing right now
                    }
                    
                }
                
                ToolbarItem(placement: .primaryAction) {
                    Button{
                        
                    } label: {
                    Image(systemName: "plus")
                    }
                }
                
            }
        }
    }
    

}



#Preview {
    LandingView()
}
