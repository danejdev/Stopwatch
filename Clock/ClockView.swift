//
//  ClockView.swift
//  Clock
//
//  Created by Dane Johnson on 12/14/21.
//

import SwiftUI

struct ClockView: View {
    @ObservedObject var timeHandler: TimeHandler
    
    func formatTime(_ value: Int) -> String {
        return String(format: "%02d", value)
    }
    
    var body: some View {
        VStack {
            Text("\(formatTime(timeHandler.hours)) : \(formatTime(timeHandler.minutes)) : \(formatTime(timeHandler.seconds))").font(.system(size: 48))
            HStack {
                Button(action: {
                    timeHandler.running == true ? timeHandler.stop() : timeHandler.start()
                }) {
                    ZStack {
                        Circle().fill(timeHandler.running == true ? Color.red : Color.green)
                        Text(timeHandler.running == true ? "Stop" : "Start").foregroundColor(.white)
                    }
                }
                
                Button(action: {
                    timeHandler.clear()
                }) {
                    ZStack {
                        Circle().fill(Color.gray)
                        Text("Clear").foregroundColor(.white)
                    }
                }
            }.frame(height: 100)
        }
    }
}

struct ClockView_Previews: PreviewProvider {
    static var timeHandler = TimeHandler()
    static var previews: some View {
        ClockView(timeHandler: timeHandler)
    }
}
