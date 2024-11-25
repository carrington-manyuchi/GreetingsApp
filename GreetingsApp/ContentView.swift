//
//  ContentView.swift
//  GreetingsApp
//
//  Created by Manyuchi, Carrington C on 2024/11/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            LinearGradient(colors: [.cyan, .blue], startPoint: .topLeading, endPoint: .bottomTrailing)
                .opacity(0.5)
                .ignoresSafeArea()
            
            VStack {
                Image(systemName: "globe")
                    .imageScale(.large)
                    .foregroundStyle(.tint)
                Text("Greetings App")
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                    .padding()
                    .foregroundStyle(.red)
                    .background(Color.orange)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                    .shadow(color: Color.orange, radius: 5, x: 5, y: 6)
                    .padding()
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
