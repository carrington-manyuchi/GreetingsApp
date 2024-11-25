//
//  TextView.swift
//  GreetingsApp
//
//  Created by Manyuchi, Carrington C on 2024/11/25.
//


import SwiftUI

struct TextView: View {
    
    let text: String
    @State var color: Color
    
    let colors: [Color] = [
        Color(red: 0.8, green: 0.8, blue: 0.8),
        Color(red: 0.8, green: 0.8, blue: 0.8),
        Color(red: 0.8, green: 0.8, blue: 0.8),
        Color(red: 0.8, green: 0.8, blue: 0.8),
        .blue, .green, .red, .orange, .yellow,
        .purple, .pink, .cyan, .teal, .gray
    ]
    
    var body: some View {
        Text(text)
            .fontWeight(.semibold)
            .padding()
            .foregroundStyle(.white)
            .background(color.opacity(0.4))
            .clipShape(RoundedRectangle(cornerRadius: 20))
            .shadow(color: color, radius: 5, x: 10, y: 10)
            .onTapGesture {
                //Randomly Change Color
                let randomColor = Int.random(in: 0..<colors.count)
                self.color = colors[randomColor]
            }
    }
}

#Preview {
    TextView(text: "Dummy Text", color: .blue)
    TextView(text: "SwiftUI is awesome", color: .green)
    TextView(text: "Red Color", color: .red)
    
}

