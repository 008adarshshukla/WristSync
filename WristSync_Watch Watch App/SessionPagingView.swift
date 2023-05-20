//
//  SessionPagingView.swift
//  WristSync_Watch Watch App
//
//  Created by Adarsh Shukla on 20/05/23.
//

import SwiftUI

enum Tab {
    case controls
    case metrics
    case nowPlaying
}

struct SessionPagingView: View {
    
    @State private var selection: Tab = .metrics
    
    var body: some View {
        TabView(selection: $selection) {
            Text("Controls")
                .tag(Tab.controls)
            Text("Metrics")
                .tag(Tab.metrics)
            Text("Now Playing")
                .tag(Tab.nowPlaying)
        }
    }
}

struct SessionPagingView_Previews: PreviewProvider {
    static var previews: some View {
        SessionPagingView()
    }
}
