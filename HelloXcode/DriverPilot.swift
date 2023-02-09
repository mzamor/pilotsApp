import Foundation
import UIKit
import SwiftUI

struct DriverPilot: Identifiable{
    var id: Int
    var name: String
    var imageName: String
    var team: TeamPilot
    var age: Int
    var number: Int
    var birthPlace: String
}
