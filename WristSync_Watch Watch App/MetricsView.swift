//
//  MetricsView.swift
//  WristSync_Watch Watch App
//
//  Created by Adarsh Shukla on 20/05/23.
//

import SwiftUI

struct MetricsView: View {
    var body: some View {
        VStack(alignment: .leading) {
            ElapsedTimeView(elapsedTime: 3 * 60 + 15.24, showSubseconds: true)
                .foregroundColor(.yellow)
            Text(Measurement(value: 47, unit: UnitEnergy.kilocalories).formatted(.measurement(width: .abbreviated, usage: .workout)))
            
            Text(153.formatted() + " bpm ")
            
            Text(Measurement(value: 515, unit: UnitLength.meters).formatted(.measurement(width: .abbreviated, usage: .road)))
        }
        .font(.system(.title, design: .rounded).monospacedDigit().lowercaseSmallCaps())
        .frame(maxWidth: .infinity, alignment: .leading)
        .edgesIgnoringSafeArea(.bottom)
        //MARK: To align to navigation Bar title.
        .scenePadding()
    }
}

struct MetricsView_Previews: PreviewProvider {
    static var previews: some View {
        MetricsView()
    }
}
