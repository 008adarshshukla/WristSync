//
//  ContentView.swift
//  WristSync_Watch Watch App
//
//  Created by Adarsh Shukla on 11/05/23.
//

import SwiftUI
import WatchKit

struct ContentView: View {
    var body: some View {
        ZStack {
            Color.black.edgesIgnoringSafeArea(.all)
            
            NavigationStack {
                StartView()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

/*
 WristSync_WatchApp.swift
 
 
 import SwiftUI

 @main
 struct WristSync_Watch_Watch_AppApp: App {
     var body: some Scene {
         WindowGroup {
             ContentView()
         }
     }
 }

 */
