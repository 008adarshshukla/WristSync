//
//  ElapsedTimeView.swift
//  WristSync_Watch Watch App
//
//  Created by Adarsh Shukla on 20/05/23.
//

import SwiftUI

struct ElapsedTimeView: View {
    
    var elapsedTime: TimeInterval = 0
    var showSubseconds: Bool = true
    @State private var timeFormatter = ElapsedTimeFormatter()
    
    var body: some View {
        Text(NSNumber(value: elapsedTime),formatter: timeFormatter)
            .fontWeight(.semibold)
            .onChange(of: showSubseconds) {
                timeFormatter.showSubseconds = $0
            }
    }
}

class ElapsedTimeFormatter: Formatter {
    let componentFormatter: DateComponentsFormatter = {
        let formatter = DateComponentsFormatter()
        formatter.allowedUnits = [.minute, .second]
        formatter.zeroFormattingBehavior = .pad
        
        return formatter
    }()
    
    var showSubseconds = true
    
    override func string(for obj: Any?) -> String? {
        guard let time = obj as? TimeInterval else {
            return nil
        }
        
        guard let formattedString = componentFormatter.string(from: time) else {
            return nil
        }
        
        if showSubseconds {
            let hundredths = Int((time.truncatingRemainder(dividingBy: 1)) * 100)
            let decimalSeparator = Locale.current.decimalSeparator ?? "."
            
            return String(format: "%@%@%0.2d", formattedString,decimalSeparator,hundredths)
        }
        
        return formattedString
    }
}

struct ElapsedTimeView_Previews: PreviewProvider {
    static var previews: some View {
        ElapsedTimeView()
    }
}
