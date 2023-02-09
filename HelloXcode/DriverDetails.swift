//
//  DriverDetails.swift
//  HelloXcode
//
//  Created by Mariano Zamora on 08/02/2023.
//

import SwiftUI

struct DriverDetails: View {
    var driver : DriverPilot
    
    var body: some View {
        VStack {
            Image(driver.team.imageName)
                .resizable()
                .frame(height: 230)

            Image(driver.imageName).resizable().scaledToFit()
                .frame(width: 150, height: 150)
                .clipShape(Circle())
                .background(Circle().foregroundColor(driver.team.color))
                .overlay(Circle().stroke(Color.white, lineWidth: 3))
                .shadow(radius: 18)
                .offset(x:0, y:-65)
                .padding(.bottom, -55)
                
            
            Text(driver.name).font(.system(size: 45))
                .fontWeight(.bold)
            StatsRow(field:"Edad",value:String(driver.age))
            StatsRow(field:"Número",value:String(driver.number))
            StatsRow(field:"Origen",value:driver.birthPlace)

    
            Spacer()
    
        }.edgesIgnoringSafeArea(.top)
        
    }
}

struct DriverDetails_Previews: PreviewProvider {
    static var previews: some View {
        DriverDetails(driver: drivers[7])
    }
}
