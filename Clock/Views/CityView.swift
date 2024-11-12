//
//  CityView.swift
//  Clock
//
//  Created by Hannu Packalen on 2024-11-12.
//


import SwiftUI

struct CityView: View {
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