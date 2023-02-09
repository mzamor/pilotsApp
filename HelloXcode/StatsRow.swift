//
//  StatsRow.swift
//  HelloXcode
//
//  Created by Mariano Zamora on 08/02/2023.
//

import SwiftUI

struct StatsRow: View {
    
    var field : String
    var value : String
    
    var body: some View {
        
        HStack(alignment: .center){
            Text("\(field) :")
                .font(.system(size: 35))
                .fontWeight(.bold)
                .padding(.leading, 40)
            Text(value)
                .font(.system(size: 40))
                .fontWeight(.light)
                .padding(.trailing,40)
            Spacer()
        }
    }
}

struct StatsRow_Previews: PreviewProvider {
    static var previews: some View {
        StatsRow(field:"Name", value:"Mariano Zamora")
    }
}
