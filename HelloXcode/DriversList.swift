
import SwiftUI

struct DriversList: View {
    var body: some View {
        NavigationView(){
            List(drivers) {
                driver in
                NavigationLink{
                    DriverDetails(driver:driver)
                } label:{
                    DriverRaw(driver: driver)
                }
            }
        }
    }
}

struct DriversList_Previews: PreviewProvider {
    static var previews: some View {
        DriversList()
    }
}
