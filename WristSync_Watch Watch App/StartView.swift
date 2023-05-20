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
        List(workOutTypes) { workoutType in
            NavigationLink(workoutType.name) {
                Text(workoutType.name)
            }
            .padding(EdgeInsets(top: 15, leading: 5, bottom: 15, trailing: 5))
        }
        //MARK: Carousel type provides depth effect while scrolling.
        .listStyle(.carousel)
        .navigationTitle("Workouts")
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
