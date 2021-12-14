//
//  ClockApp.swift
//  Clock
//
//  Created by Dane Johnson on 12/14/21.
//

import SwiftUI

@main
struct ClockApp: App {
    var timeHandler = TimeHandler()
    var body: some Scene {
        WindowGroup {
            ClockView(timeHandler: timeHandler)
        }
    }
}
