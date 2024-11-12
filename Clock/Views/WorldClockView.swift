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
                ExtractedView(Time: "12:00", AmPm: "PM", City: "Toronto", Difference: "+ 0:00hrs")
               
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

struct ExtractedView: View {
    //Mark: Stored properties
    var Time: String
    var AmPm: String
    var City: String
    var Difference: String
    
    
    //Mark: computed properties
    var body: some View {
        //Toronto
        HStack{
            
            VStack{
                Text (Difference)
                Text (City)
                    .font(.system(.largeTitle, design: .default, weight: .none))
            }
            
            Spacer()
            
            Text(Time)
                .font(.system(size: 64.0, weight: .thin, design: .default))
            Text(AmPm)
                .font(.system(size: 50.0, weight: .thin, design: .default))
            
            
        }
    }
}

#Preview {
    LandingView()
}
