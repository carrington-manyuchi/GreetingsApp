//
//  TitleView.swift
//  GreetingsApp
//
//  Created by Manyuchi, Carrington C on 2024/11/25.
//

import SwiftUI

/// This is the title view of the app which displays a title, subTitle, which
/// randomly changes on tap and we have a colorful disc which rotates
/// on tap and that is amazing.

struct TitleView: View {
    
    let lineWidth: CGFloat = 15
    let diameter: CGFloat = 70
    @State private var isRotated: Bool = false
    
    var angle: Angle {
        isRotated ? .zero : Angle(degrees: 360)
    }
    
    var angularGradient: AngularGradient {
        AngularGradient.init(gradient: Gradient(colors: [
            .pink, .purple, .blue, .green, .red, .orange
        ]), center: .center, angle: .zero)
    }
    
    @State private var subTitle: String = "Exploring iOS Programming"
    
    let subTitles: [String] = [
        "SwiftUI is a powerful framework!",
        "Exploring iOS Programming",
        "Learning how to bake iOS apps",
        "A quest for knowledge",
        "Programming reciepes"
    ]
    
    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 0) {
                Text("Greetings")
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                Text("\(subTitle)")
                    .font(.headline)
                    .fontWeight(.thin)
                    .foregroundColor(.blue)
            }
            .onTapGesture {
                // Change Subtitle
                subTitle = subTitles.randomElement() ?? "Exploring iOS Programming"
            }
            Spacer()
            Circle()
                .strokeBorder(
                    angularGradient,
                    lineWidth: lineWidth)
                .rotationEffect(angle)
                .frame(width: diameter, height: diameter)
                .onTapGesture {
                    withAnimation {
                        isRotated.toggle()
                    }
                }
        }
    }
}

#Preview {
    VStack {
        TitleView()
        Spacer()
    }
    .padding()
}
