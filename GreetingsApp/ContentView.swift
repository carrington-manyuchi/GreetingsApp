//
//  ContentView.swift
//  GreetingsApp
//
//  Created by Manyuchi, Carrington C on 2024/11/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .leading) {
            
            TextView(text: "Hello there!", color: .green)
            
            TextView(text: "Welcome to Swift programming!", color: .gray)
            
            TextView(text: "Are you ready to start", color: .yellow)
            
            TextView(text: "Start eploring!", color: .red)
            
            TextView(text: "Let's get started!", color: .blue)
            
            TextView(text: "Boom", color: .purple)
            
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
