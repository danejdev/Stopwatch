//
//  TimeHandler.swift
//  Clock
//
//  Created by Dane Johnson on 12/14/21.
//

import Foundation
import SwiftUI

class TimeHandler: ObservableObject {
    @Published var hours: Int
    @Published var minutes: Int
    @Published var seconds: Int
    
    var running: Bool?
    
    init() {
        hours = 0
        minutes = 0
        seconds = 0
    }
    
    func start() {
        running = true
        Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { timer in            
            self.incrementTime()
            
            if (self.running == false) {
                timer.invalidate()
            }
        }
    }
    
    func stop() {
        running = false
    }
    
    func clear() {
        hours = 0
        minutes = 0
        seconds = 0
    }
    
    private func incrementTime() {
        let max = 59
        
        if (seconds == max) {
            seconds = 0
            if (minutes == max) {
                minutes = 0
                hours += 1
            }
            // we can add a minute
            else {
                minutes += 1
            }
        }
        // we can add a second
        else {
            seconds += 1
        }
    }
}
