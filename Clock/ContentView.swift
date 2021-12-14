//
//  ContentView.swift
//  Clock
//
//  Created by Dane Johnson on 12/14/21.
//

import SwiftUI
import Foundation

struct Time: View {
    @ObservedObject

    
    var body: some View {
        Text("\(trailingZero(hour)) : \(trailingZero(minutes)) : \(trailingZero(seconds))")
            .font(.title)
    }
}

struct ContentView: View {
    var body: some View {
        VStack {
            ZStack {
                Time()
                Circle()
                    .strokeBorder()
            }
            HStack {
                Button(action: {}) {
                    ZStack {
                        Circle()
                            .fill(Color.red)
                        Text("Stop")
                            .foregroundColor(.white)
                    }
                }
                Button(action: {}) {
                    ZStack {
                        Circle()
                            .fill(Color.green)
                        Text("Start")
                            .foregroundColor(.white)
                    }
                }
            }
        }.padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
