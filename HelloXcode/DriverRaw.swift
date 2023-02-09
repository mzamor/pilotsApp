//
//  DriverRaw.swift
//  HelloXcode
//
//  Created by Mariano Zamora on 08/02/2023.
//

import SwiftUI

struct DriverRaw: View {
    
    var driver : DriverPilot
    var body: some View {
        HStack {
            Image(driver.imageName).resizable().scaledToFit()
                .clipShape(Circle())
                .background(Circle().foregroundColor(driver.team.color)).frame(width: 60, height: 60).padding(.leading, 5)
            Text(driver.name).font(.title2)

        }.frame(width: 250, height: 50, alignment: .leading)
    }
}

struct DriverRaw_Previews: PreviewProvider {
    static var previews: some View {
        DriverRaw(driver: drivers[0])
    }
}
