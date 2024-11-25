//
//  TextView.swift
//  GreetingsApp
//
//  Created by Manyuchi, Carrington C on 2024/11/25.
//


import SwiftUI

struct TextView: View {
    
    let text: String
    let color: Color
    
    var body: some View {
        Text(text)
            .fontWeight(.semibold)
            .padding()
            .foregroundStyle(.white)
            .background(color.opacity(0.4))
            .clipShape(RoundedRectangle(cornerRadius: 20))
            .shadow(color: color, radius: 5, x: 10, y: 10)
    }
}

#Preview {
    TextView(text: "Dummy Text", color: .blue)
    TextView(text: "SwiftUI is awesome", color: .green)
    TextView(text: "Red Color", color: .red)
}

