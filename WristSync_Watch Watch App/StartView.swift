//
//  StartView.swift
//  WristSync_Watch Watch App
//
//  Created by Adarsh Shukla on 18/05/23.
//

import SwiftUI
import HealthKit

struct StartView: View {
    
    var workOutTypes: [HKWorkoutActivityType] = [.cycling, .running, .walking]
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct StartView_Previews: PreviewProvider {
    static var previews: some View {
        StartView()
    }
}

extension HKWorkoutActivityType: Identifiable {
    public var id: UInt {
        rawValue
    }
    var name: String {
        switch self {
        case .running:
            return "Run"
        case .cycling:
            return "Bike"
        case .walking:
            return "Walk"
            
        default:
            return ""
        }
    }
}
