//
//  MessagesView.swift
//  GreetingsApp
//
//  Created by Manyuchi, Carrington C on 2024/11/25.
//

import SwiftUI

struct DataItemModel: Identifiable {
    let id = UUID()
    let text: String
    let color: Color
}

struct MessagesView: View {
    
    let messages: [DataItemModel] = [
        .init(text: "Hello there!", color: .green),
        .init(text:"Welcome to Swift programming!", color: .gray),
        .init(text: "Are you ready to start", color: .yellow),
        .init(text: "Start eploring!", color: .red),
        .init(text: "Let's get started!", color: .blue),
        .init(text: "Boom", color: .purple)
    ]
    
    var body: some View {
        ForEach(messages) { message in
            TextView(text: message.text, color: message.color)
        }
    }
}

#Preview {
    MessagesView()
}
